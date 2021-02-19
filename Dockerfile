FROM kalilinux/kali-rolling
ARG DEBIAN_FRONTEND=noninteractive
ENV TERM xterm-256color
RUN apt-get update && apt upgrade -y && apt-get install sudo -y
ENV APP_ID=2897957
ENV API_HASH=bff358385e14e625adba25945261b2fe
ENV TG_BOT_TOKEN_BF_HER=1658080214:AAGBv0DswoyCisxNQsBYC6L1VGOYsGNnlA4
ENV STRING_SESSION=1BJWap1wBu0bvUyPadUcjCWqdX4UWAyG9U0egRSy_4h5V0y54cXvFADh5o8o27tchfbW1pdfSj7CN-E5bfoRq8DmgBE-zonN_e8hEGZR0TILOM5pgRlo_Fxm41cELLa6Oi3d21ZdGulx0lSctxFEtSsidVffELrSCXVIh1lMxe3zfqgysD9DPTd6G8-qBk_iCPu4ojurD4LQVDY3Upfpy61bs6QevK4FdYdifhQbNuvhIy7u1FdzrjsAEXmQugW5cNKPPRQlggxTQzLpOgqzuvCvLBFZKF4GjReA4bEXAkQnP73drhqJyHexvodBi71vhC7e5byvIOA0uptrrcRTPBgnVrEyTjAY=
ENV PRIVATE_GROUP_ID=-1001258183253


EXPOSE 9876

RUN apt-get install -y xz-utils

COPY start.sh /start.sh
COPY index.html /index.html
CMD ["bash","/start.sh"]
