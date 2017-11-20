# Amazon RDS for the AWS Service Broker
Provision, manage and connect to [Amazon RDS](https://github.com/awsservicebroker/docs/wiki).

## Prerequisites

**IAM resources** - see the [AWS Service Broker Requirements](https://github.com/awsservicebroker/docs/blob/develop/service-broker-docs/Overview.md#requirements) for details
**VPC** - A VPC ID will be requested during launch, A VPC with unused CIDR space is required as the plan will create the required subnets.

## Plans

### MySQL - Custom
Exposes all available parameters for the MySQL RDS engine.

### MySQL - Production
Best practice MySQL plan for production by setting the following parameters:

    MultiAZ: true
    NumberOfAvailabilityZones: 2
    AvailabilityZones: automatic
    CidrSize: 27
    CidrBlocks: automatic
    DBName: automatic
    PortNumber: 13306
    StorageEncrypted: true
    StorageType: io1
    CopyTagsToSnapshot: true
    BackupRetentionPeriod: 35
    MonitoringInterval: 1
    AllowMajorVersionUpgrade: false
    AutoMinorVersionUpgrade: true
    MasterUsername: master
    MasterUserPassword: generates a 41 character alphanumeric password

### MySQL - Development
Best practice MySQL plan for development use by setting the following parameters:

    MultiAZ: false
    NumberOfAvailabilityZones: 2
    AvailabilityZones: automatic
    CidrSize: 28
    CidrBlocks: automatic
    DBName: automatic
    PortNumber: 13306
    StorageEncrypted: true
    StorageType: io1
    CopyTagsToSnapshot: false
    BackupRetentionPeriod: 0
    MonitoringInterval: 60
    AllowMajorVersionUpgrade: false
    AutoMinorVersionUpgrade: true
    MasterUsername: master
    MasterUserPassword: generates a 41 character alphanumeric password
    PreferredBackupWindow: 04:00-06:00
    PreferredMaintenanceWindowDay: Sat
    PreferredMaintenanceWindowStartTime: 06:00
    PreferredMaintenanceWindowEndTime: 07:00

## Retained resources

Resources retained within the AWS account should this plan be removed.

The Database option group will be retained within the AWS should the broker be removed. In order to protect against accidental data loss a snapshot is created on delete. The database option group is linked to this snapshot, as such it is retained. Both the snaposhot and option group can be removed if not required. Customers should be aware that there is a default limit on the number of RDS database option groups, a limit increase can be performed. http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Limits.html

## Resources

[Getting Started With OCP and the AWS Service Broker](https://github.com/awsservicebroker/docs/blob/develop/getting-started.md)  
[AWS Service Broker Overview](https://github.com/awsservicebroker/docs/blob/develop/service-broker-docs/Overview.md)  
[FAQ](https://github.com/awsservicebroker/docs/blob/develop/service-broker-docs/FAQ.md)  
[Troubleshooting](https://github.com/awsservicebroker/docs/blob/develop/service-broker-docs/Troubleshooting.md)  

