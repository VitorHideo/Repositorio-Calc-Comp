import psutil

"""Informações sobre a CPU"""
print(psutil.cpu_times (percpu = False ))
print(psutil.cpu_times())

"""
scputimes: estatística de tempo de cpu
user: tempo gasto pelo usuário
system: tempo gasto pelo sistema
idle: tempo de cpu ociosa
dpc (defereed procedures call – chamadas de pocedimento adiada)- é a porcentagem de
tempo que o processador gasta recebendo e atendendo chamadas de procedimento
adiado. São chamadas ao processadorque não responde ao processamento solicitado.
"""

""""Porcentagem de uso da CPU"""
print(psutil.cpu_percent(interval = 1))

"""Desempenho do CORE da CPU"""
print(psutil.cpu_percent(interval=1, percpu=True))

"""Número total de CORE da CPU"""
print(psutil.cpu_count())

"""Número total de CORE VIRTUAIS da CPU"""
print(psutil.cpu_count(logical=False))

"""Frequencia da CPU"""
print(psutil.cpu_freq())
print(psutil.cpu_freq(percpu=True))

"""Memoria Virtual"""
print(psutil.virtual_memory())

"""Disco"""
print(psutil.disk_partitions())
print(psutil.disk_usage('/')) #('C:\\') Para WINDOWS e ('/') para LINUX
print(psutil.disk_partitions(all=False))