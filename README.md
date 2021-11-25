# Creating a Kubernetes Cluster on Debian with bash
Установка и настройка kubectl для linux :


1) Скопируйте репозиторий:

    ```sh
    git clone https://github.com/havelockz/-kubernetes-cluster-install.git
    ```


2) Присвойте права доступа на исполнение скрипта:

    ```sh
    chmod +x install.sh
    ```


3) Запустите установочный скрипт:

    ```sh
    ./install.sh
    ```
# Creating a Kubernetes Cluster on DigitalOcean with Python and Fabric


Check out the [blog post](https://testdriven.io/creating-a-kubernetes-cluster-on-digitalocean).

1. Fork/Clone

    ```sh
    git clone https://github.com/havelockz/-kubernetes-cluster-install.git
    ```
    
    ```sh
    cd kubespray
    ```

2. Create and activate a virtualenv

3. Install the requirements

    ```sh
    pip install -r requirements.txt
    ```

4. [Sign up](https://m.do.co/c/d8f211a4b4c2) for Digital Ocean and [generate](https://www.digitalocean.com/docs/apis-clis/api/) an access token

5. Add the token to your environment:

    ```sh
    $ export DIGITAL_OCEAN_ACCESS_TOKEN=[your_token]
    ```

5. [Add](https://www.digitalocean.com/docs/droplets/how-to/add-ssh-keys/to-account/) a public SSH key to your account.

6. Spin up the cluster:

    ```sh
    $ sh create.sh
    ```
