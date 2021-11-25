#!/bin/bash

if test $# -eq 0; then
echo " Установка kubectl"
echo " Введите режим работы:"
echo "1) Установка двоичного файла kubectl с помощью curl в Linux"
echo "2) Установка с помощью встроенного пакетного менеджера"
echo "3) Установка с помощью стороннего пакетного менеджера"
echo " Проверка конфигурации kubectl"
echo "4) Состояние кластера"
echo " Дополнительная конфигурация kubectl"
echo "5) Установка bash-completion"
echo "6) Включение автодополнения ввода kubectl"
echo "7) Заверешние работы"
fi
case "$1" in
1) curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl && chmod +x ./kubectl && sudo mv ./kubectl /usr/local/bin/kubectl && kubectl version --client && echo "Успешно установлено!" ;;
2) sudo apt-get update && sudo apt-get install -y apt-transport-https && curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add - && echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list && sudo apt-get update && sudo apt-get install -y kubectl && echo "Успешно установлено!" ;;
3) snap install kubectl --classic && kubectl version && echo "Успешно установлено!" ;;
4) kubectl cluster-info dump ;;
5) sudo apt-get install bash-completion && type _init_completion ;;
6) echo 'source <(kubectl completion bash)' >>~/.bashrc && kubectl completion bash >/etc/bash_completion.d/kubectl ;;
7) exit 0 ;;
*) echo "нет такой команды" ;;
esac
