# Go Expert Stress Test Tool

Go Expert Stress Test is a simple CLI tool for stress testing web services.
It allows you to simulate multiple concurrent HTTP requests, enabling you to assess the performance and reliability of your APIs under load.

### How to Run the Project Locally

### 1. Clone the Repository

Clone the repository to your local machine:

```
git clone https://github.com/jordanoluz/goexpert-stress-test.git
```

### 2. Navigate to the Project Directory

Navigate into the project directory:

```
cd goexpert-stress-test
```

### 3. Build and Run the Docker Container

Build the image:

```
docker build -t goexpert-stress-test .
```

Run the container:

```
docker run goexpert-stress-test --url=http://google.com --requests=1000 --concurrency=100
```

Example output:

```
Making HTTP requests, please wait...
Stress Test Report:
Total time: 10.492776567s
Total requests: 1000
Requests with status code 200: 467
Requests by status code:
 → 200 OK: 467
 → 429 Too Many Requests: 533
```
