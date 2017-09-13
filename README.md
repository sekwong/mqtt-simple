## Installation ##
```$ docker-compose up```

## Update credentials ##

Add or delete account.

```$ npm install -g mosca``` 

```$ mosca adduser username_001 p@ssword --credentials ./config/credentials.json --authorize-publish 'room1/*' --authorize-subscribe 'room1/*' ```

Remove

```$ mosca rmuser myuser --credentials ./config/credentials.json```


## Stack plan ##


```
                                
                              |-- broker1 --|
                              |             |
internet === loadbalance ===  |-- broker2 --| === persistence storage
                              |    ...      |
                              |-- brokerx --|

```
