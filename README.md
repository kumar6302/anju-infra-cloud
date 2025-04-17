# CSVServer Assignment - Infracloud

## Part I

### Step-by-step Instructions

1. Generate `inputFile`
```bash
chmod +x gencsv.sh
./gencsv.sh 2 8
```

2. Run container manually
```bash
docker run -d --name=csvserver -p 9393:9300 -e CSVSERVER_BORDER=Orange -v $(PWD)/inputFile:/csvserver/inputdata infracloudio/csvserver:latest
```

3. Verify data
```bash
curl http://localhost:9394/raw
```

4. View logs
```bash
docker logs csvserver
```

## Part II - Docker Compose
```bash
docker-compose up -d
```

## Part III - Prometheus Monitoring
- Access Prometheus at http://localhost:9091
- Query `csvserver_records` to verify monitoring
