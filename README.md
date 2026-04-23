# UPD 2026

Native histograms are stable [since 3.8.0, released in Dec 2025](https://groups.google.com/g/prometheus-announce/c/NqC1FhcgA-s)

`scrape_native_histograms` parameter in scrape config should be used to enable them.
<https://github.com/prometheus/prometheus/pull/17315>

# Prometheus Native Histogram

This repository serve as a demo for the new [native histrogam](https://prometheus.io/docs/specs/native_histograms/) from **Prometheus**.

For the reminder, native histogram is a feature that will allow creating more precise and performant histogram inside **Prometheus** than the current one (you know the series with the *le* label)

This repository will also demonstrate visualizing such histogram inside **Grafana**

## How to use this

> You need docker and docker compose for this demonstration

Just :

``` bash
docker compose up -d --pull=always
```

Grafana credentials:

> Username: `admin`  
> Password: `admin`

Then you can visit prometheus here <http://localhost:9090> and run promql query against the new histogram :

``` promql
rpc_durations_native_histogram_seconds
# or
rate(rpc_durations_native_histogram_seconds[30s])
```

Or visit this grafana dashboard to get a sneak peek at the heatmap for this new histogram compared to the old one <http://localhost:3000/d/native-histogram>
