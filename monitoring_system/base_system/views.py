from django.shortcuts import render
from django.db import connection
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
from io import BytesIO
import base64
from datetime import datetime


def message_filter(filter_value, date_filter=None):
    if filter_value == 'important':
        query = "SELECT * FROM data_for_monitoring_system.logs WHERE severity='high' ORDER BY timestamp DESC LIMIT 3"
    elif date_filter:
        query = f"SELECT * FROM data_for_monitoring_system.logs WHERE DATE(timestamp) = '{date_filter}' ORDER BY timestamp DESC LIMIT 3"
    elif filter_value == 'execution_error':
        query = "SELECT * FROM data_for_monitoring_system.logs WHERE message_type LIKE '%ошибка%' ORDER BY timestamp DESC LIMIT 3"
    else:
        query = "SELECT * FROM data_for_monitoring_system.logs ORDER BY timestamp DESC LIMIT 3"
    return query


def axis_status_finder():
    with connection.cursor() as cursor:
        query = """
                    SELECT t1.*
                    FROM data_for_monitoring_system.axis_status t1
                    JOIN (
                        SELECT axis_name, MAX(datetime) AS max_datetime
                        FROM data_for_monitoring_system.axis_status
                        GROUP BY axis_name
                    ) t2 ON t1.axis_name = t2.axis_name AND t1.datetime = t2.max_datetime
                    ORDER BY t1.datetime DESC;
                """
        cursor.execute(query)
        axis_list = cursor.fetchall()

    return axis_list


def plot_func():
    with connection.cursor() as cursor:
        query = """
            SELECT temperature, date_and_time
            FROM engine_temp
            WHERE engine_name='Главный шпиндель' AND (date_and_time LIKE '%2023-12-19%')
            ORDER BY date_and_time
        """
        cursor.execute(query)
        result = cursor.fetchall()

    plt.figure(figsize=(10, 6))
    temperatures, date_and_time = zip(*result)
    plt.plot(date_and_time, temperatures, marker='o', linestyle='-', color='b')
    plt.title('Температура Главного шпинделя (2023-12-19)')
    plt.xlabel('Дата и время')
    plt.ylabel('Температура')
    plt.grid(True)

    buffer = BytesIO()
    plt.savefig(buffer, format='png', bbox_inches='tight')
    buffer.seek(0)
    plt.close()

    image_base64 = base64.b64encode(buffer.getvalue()).decode('utf-8')
    return image_base64


def engine_temperature():
    with connection.cursor() as cursor:
        query = """
            WITH RankedData AS (
              SELECT
                engine_name,
                temperature,
                date_and_time,
                ROW_NUMBER() OVER (PARTITION BY engine_name ORDER BY date_and_time DESC) AS row_num
              FROM
                data_for_monitoring_system.engine_temp
            )
            SELECT
              engine_name,
              temperature,
              date_and_time
            FROM
              RankedData
            WHERE
              row_num = 1;
        """
        cursor.execute(query)
        engine_data = cursor.fetchall()

    return engine_data


def engine_avg_temp():
    with connection.cursor() as cursor:
        query = """
         SELECT
         engine_name,
         AVG(temperature) AS avg_temperature
         FROM
         data_for_monitoring_system.engine_temp
         WHERE
         DATE(date_and_time) = '2023-12-18'
         GROUP BY
         engine_name;
         """
        cursor.execute(query)
        average_data = cursor.fetchall()
    return average_data


def type_of_machine():
    with connection.cursor() as cursor:
        query = """
         SELECT
         type
         FROM
         data_for_monitoring_system.machine_type
         """
        cursor.execute(query)
        machine_types = [row[0] for row in cursor.fetchall()]
    return machine_types


def name_of_machine():
    with connection.cursor() as cursor:
        query = """
         SELECT
         model_name
         FROM
         data_for_monitoring_system.machine_name
         """
        cursor.execute(query)
        machine_names = [row[0] for row in cursor.fetchall()]
    return machine_names


def base_logic_system(request):
    filter_value = request.GET.get('filter', 'all')
    date_filter = request.GET.get('date_filter', None)

    query = message_filter(filter_value, date_filter)
    axis_list = axis_status_finder()
    engine_data = engine_temperature()
    avg_temp = engine_avg_temp()
    machine_types = type_of_machine()
    machine_names = name_of_machine()

    with connection.cursor() as cursor:
        cursor.execute(query)
        message_list = cursor.fetchall()

    graph = plot_func()

    context = {
        'message_list': message_list,
        'graph': graph,
        'axis_list': axis_list,
        'engine_data': engine_data,
        'avg_temp': avg_temp,
        'machine_types': machine_types,
        'machine_names': machine_names,
    }
    return render(request=request, template_name='base_system/base_system.html', context=context)
