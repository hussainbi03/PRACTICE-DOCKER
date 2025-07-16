ARG version
FROM almalinux:${version:9}
#means $ means it will take value at runtime, if no value gien it will take 9
ENV course="devops with aws" \
    trainer="shiva" \
    duration="120hrs"
#here user1 is key, someuser is default value
ARG USERNAME=sivakumar
ENV USERNAME=$USERNAME
RUN echo "hello user: ${USERNAME}, image version: 4{version}" > /tmp/devops.txt
CMD ["sleep", "100"]