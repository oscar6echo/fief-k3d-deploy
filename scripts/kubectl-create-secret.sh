#! /bin/bash

echo '---'
kubectl -n fief delete secret secret-pg
echo '---'
kubectl -n fief create secret generic secret-pg --from-env-file=../secrets/pg.env

echo '---'
kubectl -n fief delete secret secret-fief
echo '---'
kubectl -n fief create secret generic secret-fief --from-env-file=../secrets/fief.env



