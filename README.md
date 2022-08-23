![Build Status](https://github.com/yodaplus/xss-deploy/actions/workflows/.github/workflows/tests.yaml/badge.svg?branch=v1.2-xinfin)

# XDC related notes

USXD - an over-collateralized stablecoin on XDC network - is based on MakerDAO's DAI stablecoin. 
This repository is a fork of v1.2 branch of [dss-deploy](https://github.com/makerdao/dss-deploy/tree/v1.2). 

# Multi Collateral USXD Deployment

This repository contains `DssDeploy` and `govActions` smart contracts which deploys the core [xss](https://github.com/yodaplus/xss) contracts and sets up the necessary authorisations between them. As of now, this repository is only used for deploying the USXD contract (`Dai.sol`) from `xss`. All the other deployments continue to be routed through MakerDAO's `dss-deploy`.  

The deployment itself is managed from the [xss-deploy-scripts](https://github.com/yodaplus/xss-deploy-scripts) repository which continues to refer to dss repositories used by MakerDAO in most cases.
