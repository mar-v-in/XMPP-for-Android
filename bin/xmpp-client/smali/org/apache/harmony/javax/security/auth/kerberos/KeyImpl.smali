.class Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;
.super Ljava/lang/Object;
.source "KeyImpl.java"

# interfaces
.implements Ljavax/crypto/SecretKey;
.implements Ljavax/security/auth/Destroyable;
.implements Ljava/io/Serializable;


# static fields
.field private static final PARITY:[Z = null

.field private static final REVERSE:[B = null

.field private static final serialVersionUID:J = -0x6d7c7917c350b429L


# instance fields
.field private transient destroyed:Z

.field private transient keyBytes:[B

.field private transient keyType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x7

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 54
    const/16 v0, 0x100

    new-array v0, v0, [Z

    aput-boolean v3, v0, v3

    aput-boolean v3, v0, v4

    .line 55
    aput-boolean v3, v0, v5

    aput-boolean v3, v0, v6

    aput-boolean v3, v0, v7

    const/16 v1, 0xb

    aput-boolean v3, v0, v1

    const/16 v1, 0xd

    .line 56
    aput-boolean v3, v0, v1

    const/16 v1, 0xe

    aput-boolean v3, v0, v1

    const/16 v1, 0x10

    aput-boolean v3, v0, v1

    const/16 v1, 0x13

    aput-boolean v3, v0, v1

    const/16 v1, 0x15

    aput-boolean v3, v0, v1

    const/16 v1, 0x16

    aput-boolean v3, v0, v1

    const/16 v1, 0x19

    .line 57
    aput-boolean v3, v0, v1

    const/16 v1, 0x1a

    aput-boolean v3, v0, v1

    const/16 v1, 0x1c

    aput-boolean v3, v0, v1

    const/16 v1, 0x1f

    aput-boolean v3, v0, v1

    const/16 v1, 0x20

    aput-boolean v3, v0, v1

    const/16 v1, 0x23

    .line 58
    aput-boolean v3, v0, v1

    const/16 v1, 0x25

    aput-boolean v3, v0, v1

    const/16 v1, 0x26

    aput-boolean v3, v0, v1

    const/16 v1, 0x29

    aput-boolean v3, v0, v1

    const/16 v1, 0x2a

    aput-boolean v3, v0, v1

    const/16 v1, 0x2c

    .line 59
    aput-boolean v3, v0, v1

    const/16 v1, 0x2f

    aput-boolean v3, v0, v1

    const/16 v1, 0x31

    aput-boolean v3, v0, v1

    const/16 v1, 0x32

    aput-boolean v3, v0, v1

    const/16 v1, 0x34

    aput-boolean v3, v0, v1

    const/16 v1, 0x37

    .line 60
    aput-boolean v3, v0, v1

    const/16 v1, 0x38

    aput-boolean v3, v0, v1

    const/16 v1, 0x3b

    aput-boolean v3, v0, v1

    const/16 v1, 0x3d

    aput-boolean v3, v0, v1

    const/16 v1, 0x3e

    aput-boolean v3, v0, v1

    const/16 v1, 0x40

    .line 61
    aput-boolean v3, v0, v1

    const/16 v1, 0x43

    aput-boolean v3, v0, v1

    const/16 v1, 0x45

    aput-boolean v3, v0, v1

    const/16 v1, 0x46

    aput-boolean v3, v0, v1

    const/16 v1, 0x49

    .line 62
    aput-boolean v3, v0, v1

    const/16 v1, 0x4a

    aput-boolean v3, v0, v1

    const/16 v1, 0x4c

    aput-boolean v3, v0, v1

    const/16 v1, 0x4f

    aput-boolean v3, v0, v1

    const/16 v1, 0x51

    aput-boolean v3, v0, v1

    const/16 v1, 0x52

    aput-boolean v3, v0, v1

    const/16 v1, 0x54

    .line 63
    aput-boolean v3, v0, v1

    const/16 v1, 0x57

    aput-boolean v3, v0, v1

    const/16 v1, 0x58

    aput-boolean v3, v0, v1

    const/16 v1, 0x5b

    aput-boolean v3, v0, v1

    const/16 v1, 0x5d

    .line 64
    aput-boolean v3, v0, v1

    const/16 v1, 0x5e

    aput-boolean v3, v0, v1

    const/16 v1, 0x61

    aput-boolean v3, v0, v1

    const/16 v1, 0x62

    aput-boolean v3, v0, v1

    const/16 v1, 0x64

    aput-boolean v3, v0, v1

    const/16 v1, 0x67

    .line 65
    aput-boolean v3, v0, v1

    const/16 v1, 0x68

    aput-boolean v3, v0, v1

    const/16 v1, 0x6b

    aput-boolean v3, v0, v1

    const/16 v1, 0x6d

    aput-boolean v3, v0, v1

    const/16 v1, 0x6e

    aput-boolean v3, v0, v1

    const/16 v1, 0x70

    aput-boolean v3, v0, v1

    const/16 v1, 0x73

    .line 66
    aput-boolean v3, v0, v1

    const/16 v1, 0x75

    aput-boolean v3, v0, v1

    const/16 v1, 0x76

    aput-boolean v3, v0, v1

    const/16 v1, 0x79

    aput-boolean v3, v0, v1

    const/16 v1, 0x7a

    aput-boolean v3, v0, v1

    const/16 v1, 0x7c

    .line 67
    aput-boolean v3, v0, v1

    const/16 v1, 0x7f

    aput-boolean v3, v0, v1

    const/16 v1, 0x80

    aput-boolean v3, v0, v1

    const/16 v1, 0x83

    aput-boolean v3, v0, v1

    const/16 v1, 0x85

    .line 68
    aput-boolean v3, v0, v1

    const/16 v1, 0x86

    aput-boolean v3, v0, v1

    const/16 v1, 0x89

    aput-boolean v3, v0, v1

    const/16 v1, 0x8a

    aput-boolean v3, v0, v1

    const/16 v1, 0x8c

    aput-boolean v3, v0, v1

    const/16 v1, 0x8f

    .line 69
    aput-boolean v3, v0, v1

    const/16 v1, 0x91

    aput-boolean v3, v0, v1

    const/16 v1, 0x92

    aput-boolean v3, v0, v1

    const/16 v1, 0x94

    aput-boolean v3, v0, v1

    const/16 v1, 0x97

    aput-boolean v3, v0, v1

    const/16 v1, 0x98

    aput-boolean v3, v0, v1

    const/16 v1, 0x9b

    .line 70
    aput-boolean v3, v0, v1

    const/16 v1, 0x9d

    aput-boolean v3, v0, v1

    const/16 v1, 0x9e

    aput-boolean v3, v0, v1

    const/16 v1, 0xa1

    aput-boolean v3, v0, v1

    const/16 v1, 0xa2

    aput-boolean v3, v0, v1

    const/16 v1, 0xa4

    .line 71
    aput-boolean v3, v0, v1

    const/16 v1, 0xa7

    aput-boolean v3, v0, v1

    const/16 v1, 0xa8

    aput-boolean v3, v0, v1

    const/16 v1, 0xab

    aput-boolean v3, v0, v1

    const/16 v1, 0xad

    .line 72
    aput-boolean v3, v0, v1

    const/16 v1, 0xae

    aput-boolean v3, v0, v1

    const/16 v1, 0xb0

    aput-boolean v3, v0, v1

    const/16 v1, 0xb3

    aput-boolean v3, v0, v1

    const/16 v1, 0xb5

    aput-boolean v3, v0, v1

    const/16 v1, 0xb6

    aput-boolean v3, v0, v1

    const/16 v1, 0xb9

    .line 73
    aput-boolean v3, v0, v1

    const/16 v1, 0xba

    aput-boolean v3, v0, v1

    const/16 v1, 0xbc

    aput-boolean v3, v0, v1

    const/16 v1, 0xbf

    aput-boolean v3, v0, v1

    const/16 v1, 0xc1

    .line 74
    aput-boolean v3, v0, v1

    const/16 v1, 0xc2

    aput-boolean v3, v0, v1

    const/16 v1, 0xc4

    aput-boolean v3, v0, v1

    const/16 v1, 0xc7

    aput-boolean v3, v0, v1

    const/16 v1, 0xc8

    aput-boolean v3, v0, v1

    const/16 v1, 0xcb

    .line 75
    aput-boolean v3, v0, v1

    const/16 v1, 0xcd

    aput-boolean v3, v0, v1

    const/16 v1, 0xce

    aput-boolean v3, v0, v1

    const/16 v1, 0xd0

    aput-boolean v3, v0, v1

    const/16 v1, 0xd3

    aput-boolean v3, v0, v1

    const/16 v1, 0xd5

    .line 76
    aput-boolean v3, v0, v1

    const/16 v1, 0xd6

    aput-boolean v3, v0, v1

    const/16 v1, 0xd9

    aput-boolean v3, v0, v1

    const/16 v1, 0xda

    aput-boolean v3, v0, v1

    const/16 v1, 0xdc

    aput-boolean v3, v0, v1

    const/16 v1, 0xdf

    .line 77
    aput-boolean v3, v0, v1

    const/16 v1, 0xe0

    aput-boolean v3, v0, v1

    const/16 v1, 0xe3

    aput-boolean v3, v0, v1

    const/16 v1, 0xe5

    aput-boolean v3, v0, v1

    const/16 v1, 0xe6

    aput-boolean v3, v0, v1

    const/16 v1, 0xe9

    .line 78
    aput-boolean v3, v0, v1

    const/16 v1, 0xea

    aput-boolean v3, v0, v1

    const/16 v1, 0xec

    aput-boolean v3, v0, v1

    const/16 v1, 0xef

    aput-boolean v3, v0, v1

    const/16 v1, 0xf1

    aput-boolean v3, v0, v1

    const/16 v1, 0xf2

    aput-boolean v3, v0, v1

    const/16 v1, 0xf4

    .line 79
    aput-boolean v3, v0, v1

    const/16 v1, 0xf7

    aput-boolean v3, v0, v1

    const/16 v1, 0xf8

    aput-boolean v3, v0, v1

    const/16 v1, 0xfb

    aput-boolean v3, v0, v1

    const/16 v1, 0xfd

    .line 80
    aput-boolean v3, v0, v1

    const/16 v1, 0xfe

    aput-boolean v3, v0, v1

    .line 54
    sput-object v0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->PARITY:[Z

    .line 84
    const/16 v0, 0x80

    new-array v0, v0, [B

    const/16 v1, 0x40

    aput-byte v1, v0, v3

    const/16 v1, 0x20

    aput-byte v1, v0, v4

    const/4 v1, 0x3

    const/16 v2, 0x60

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    aput-byte v1, v0, v5

    const/4 v1, 0x5

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    .line 85
    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    aput-byte v1, v0, v6

    aput-byte v7, v0, v7

    const/16 v1, 0x9

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x78

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    aput-byte v5, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    .line 86
    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x7c

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    aput-byte v4, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x62

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    .line 87
    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    .line 88
    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x40

    aput-byte v3, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    .line 89
    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x59

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x79

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x55

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    .line 90
    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    .line 91
    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x5b

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    aput-byte v6, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x47

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    .line 92
    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x77

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, 0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0x7e

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x7f

    const/16 v2, 0x7f

    aput-byte v2, v0, v1

    .line 84
    sput-object v0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->REVERSE:[B

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;[CLjava/lang/String;)V
    .locals 26
    .parameter "principal"
    .parameter "password"
    .parameter "algorithm"

    .prologue
    .line 113
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 120
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 121
    :cond_0
    new-instance v22, Ljava/lang/NullPointerException;

    invoke-direct/range {v22 .. v22}, Ljava/lang/NullPointerException;-><init>()V

    throw v22

    .line 124
    :cond_1
    if-eqz p3, :cond_2

    const-string v22, "DES"

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-eqz v22, :cond_2

    .line 125
    new-instance v22, Ljava/lang/IllegalArgumentException;

    const-string v23, "auth.49"

    invoke-static/range {v23 .. v23}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 128
    :cond_2
    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyType:I

    .line 129
    const/16 v22, 0x8

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyBytes:[B

    .line 131
    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->getRealm()Ljava/lang/String;

    move-result-object v19

    .line 132
    .local v19, realm:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->getName()Ljava/lang/String;

    move-result-object v17

    .line 134
    .local v17, pname:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v6, buf:Ljava/lang/StringBuilder;
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 136
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const/16 v22, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v23

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v24

    sub-int v23, v23, v24

    add-int/lit8 v23, v23, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 139
    invoke-static/range {v22 .. v22}, Lorg/apache/harmony/luni/util/Util;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v21

    .line 143
    .local v21, tmp:[B
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v23, v0

    .line 144
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    rem-int/lit8 v22, v22, 0x8

    if-nez v22, :cond_3

    const/16 v22, 0x0

    .line 143
    :goto_0
    add-int v22, v22, v23

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 145
    .local v18, raw:[B
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v18

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    const-wide/16 v15, 0x0

    .line 148
    .local v15, k2:J
    const/4 v11, 0x0

    .line 150
    .local v11, isOdd:Z
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_4

    .line 167
    const/4 v10, 0x7

    :goto_2
    const/16 v22, -0x1

    move/from16 v0, v22

    if-gt v10, v0, :cond_9

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyBytes:[B

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyCorrection([B)V

    .line 176
    :try_start_0
    const-string v22, "DES/CBC/NoPadding"

    invoke-static/range {v22 .. v22}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 179
    .local v7, cipher:Ljavax/crypto/Cipher;
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyBytes:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 182
    .local v5, IV:Ljavax/crypto/spec/IvParameterSpec;
    new-instance v20, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyBytes:[B

    move-object/from16 v22, v0

    const-string v23, "DES"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 183
    .local v20, secretKey:Ljavax/crypto/SecretKey;
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 184
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v9

    .line 187
    .local v9, enc:[B
    array-length v0, v9

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyBytes:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x8

    move/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v9, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyBytes:[B

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyCorrection([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    return-void

    .line 144
    .end local v5           #IV:Ljavax/crypto/spec/IvParameterSpec;
    .end local v7           #cipher:Ljavax/crypto/Cipher;
    .end local v9           #enc:[B
    .end local v10           #i:I
    .end local v11           #isOdd:Z
    .end local v15           #k2:J
    .end local v18           #raw:[B
    .end local v20           #secretKey:Ljavax/crypto/SecretKey;
    :cond_3
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    rem-int/lit8 v22, v22, 0x8

    rsub-int/lit8 v22, v22, 0x8

    goto/16 :goto_0

    .line 152
    .restart local v10       #i:I
    .restart local v11       #isOdd:Z
    .restart local v15       #k2:J
    .restart local v18       #raw:[B
    :cond_4
    const-wide/16 v13, 0x0

    .line 153
    .local v13, k1:J
    if-eqz v11, :cond_7

    .line 155
    const/4 v12, 0x7

    .local v12, j:I
    :goto_3
    const/16 v22, -0x1

    move/from16 v0, v22

    if-gt v12, v0, :cond_6

    .line 163
    :cond_5
    xor-long/2addr v15, v13

    .line 150
    add-int/lit8 v10, v10, 0x8

    if-eqz v11, :cond_8

    const/4 v11, 0x0

    :goto_4
    goto/16 :goto_1

    .line 156
    :cond_6
    const/16 v22, 0x7

    shl-long v22, v13, v22

    sget-object v24, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->REVERSE:[B

    add-int v25, v10, v12

    aget-byte v25, v18, v25

    and-int/lit8 v25, v25, 0x7f

    aget-byte v24, v24, v25

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v13, v22, v24

    .line 155
    add-int/lit8 v12, v12, -0x1

    goto :goto_3

    .line 159
    .end local v12           #j:I
    :cond_7
    const/4 v12, 0x0

    .restart local v12       #j:I
    :goto_5
    const/16 v22, 0x8

    move/from16 v0, v22

    if-ge v12, v0, :cond_5

    .line 160
    const/16 v22, 0x7

    shl-long v22, v13, v22

    add-int v24, v10, v12

    aget-byte v24, v18, v24

    and-int/lit8 v24, v24, 0x7f

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v13, v22, v24

    .line 159
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 150
    :cond_8
    const/4 v11, 0x1

    goto :goto_4

    .line 168
    .end local v12           #j:I
    .end local v13           #k1:J
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyBytes:[B

    move-object/from16 v22, v0

    long-to-int v0, v15

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v22, v10

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyBytes:[B

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyBytes:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v10

    shl-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v22, v10

    .line 170
    const/16 v22, 0x7

    shr-long v15, v15, v22

    .line 167
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_2

    .line 191
    :catch_0
    move-exception v8

    .line 192
    .local v8, e:Ljava/lang/Exception;
    new-instance v22, Ljava/lang/RuntimeException;

    const-string v23, "auth.4A"

    invoke-static/range {v23 .. v23}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v22
.end method

.method public constructor <init>([BI)V
    .locals 3
    .parameter "keyBytes"
    .parameter "keyType"

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyBytes:[B

    .line 102
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyBytes:[B

    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyBytes:[B

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    iput p2, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyType:I

    .line 104
    return-void
.end method

.method private checkState()V
    .locals 2

    .prologue
    .line 200
    iget-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->destroyed:Z

    if-eqz v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "auth.48"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    return-void
.end method

.method private keyCorrection([B)V
    .locals 3
    .parameter "key"

    .prologue
    .line 308
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 321
    return-void

    .line 309
    :cond_0
    sget-object v1, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->PARITY:[Z

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    aget-boolean v1, v1, v2

    if-nez v1, :cond_1

    .line 310
    aget-byte v1, p1, v0

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    .line 311
    aget-byte v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 308
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    :cond_2
    aget-byte v1, p1, v0

    add-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 326
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 328
    sget-object v2, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 329
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v2, v1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v0

    .line 328
    check-cast v0, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey;

    .line 331
    .local v0, ekey:Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey;
    invoke-virtual {v0}, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey;->getType()I

    move-result v1

    iput v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyType:I

    .line 332
    invoke-virtual {v0}, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey;->getValue()[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyBytes:[B

    .line 333
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    iget-boolean v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->destroyed:Z

    if-eqz v1, :cond_0

    .line 356
    new-instance v1, Ljava/io/IOException;

    const-string v2, "auth.48"

    invoke-static {v2}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 358
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 360
    sget-object v1, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    new-instance v2, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey;

    iget v3, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyType:I

    .line 361
    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyBytes:[B

    invoke-direct {v2, v3, v4}, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey;-><init>(I[B)V

    .line 360
    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    .line 362
    .local v0, enc:[B
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 363
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/DestroyFailedException;
        }
    .end annotation

    .prologue
    .line 210
    iget-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->destroyed:Z

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyBytes:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->destroyed:Z

    .line 215
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "other"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 219
    invoke-virtual {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 241
    :cond_0
    :goto_0
    return v2

    .line 222
    :cond_1
    if-ne p0, p1, :cond_2

    move v2, v3

    .line 223
    goto :goto_0

    .line 226
    :cond_2
    instance-of v4, p1, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 227
    check-cast v1, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;

    .line 228
    .local v1, that:Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;
    invoke-virtual {v1}, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 231
    iget v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyType:I

    iget v5, v1, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyType:I

    if-ne v4, v5, :cond_0

    .line 232
    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyBytes:[B

    array-length v4, v4

    iget-object v5, v1, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyBytes:[B

    array-length v5, v5

    if-ne v4, v5, :cond_0

    .line 233
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyBytes:[B

    array-length v4, v4

    if-lt v0, v4, :cond_3

    move v2, v3

    .line 238
    goto :goto_0

    .line 234
    :cond_3
    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyBytes:[B

    aget-byte v4, v4, v0

    iget-object v5, v1, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyBytes:[B

    aget-byte v5, v5, v0

    if-ne v4, v5, :cond_0

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    invoke-direct {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->checkState()V

    .line 251
    iget v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyType:I

    if-nez v0, :cond_0

    .line 252
    const-string v0, "NULL"

    .line 254
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "DES"

    goto :goto_0
.end method

.method public final getEncoded()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 263
    invoke-direct {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->checkState()V

    .line 264
    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyBytes:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 265
    .local v0, tmp:[B
    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyBytes:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    return-object v0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    invoke-direct {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->checkState()V

    .line 276
    const-string v0, "RAW"

    return-object v0
.end method

.method public final getKeyType()I
    .locals 1

    .prologue
    .line 283
    invoke-direct {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->checkState()V

    .line 284
    iget v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyType:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, hashcode:I
    iget-object v3, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyBytes:[B

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 293
    iget v2, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyType:I

    mul-int/2addr v0, v2

    .line 294
    return v0

    .line 290
    :cond_0
    aget-byte v1, v3, v2

    .line 291
    .local v1, keyByte:B
    add-int/2addr v0, v1

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->destroyed:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 340
    const/4 v0, 0x0

    .line 341
    .local v0, s_key:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyBytes:[B

    array-length v2, v2

    if-nez v2, :cond_0

    .line 344
    const-string v0, "Empty Key"

    .line 348
    :goto_0
    const-string v2, "EncryptionKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KeyType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 349
    const-string v2, "KeyBytes (Hex dump) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 346
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->keyBytes:[B

    const-string v3, " "

    invoke-static {v2, v3}, Lorg/apache/harmony/security/utils/Array;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
