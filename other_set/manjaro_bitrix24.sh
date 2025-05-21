#!/bin/bash
sudo pamac update
sudo pacman -Syy
pamac search bitrix
pamac search bitrix24
pamac build bitrix24
