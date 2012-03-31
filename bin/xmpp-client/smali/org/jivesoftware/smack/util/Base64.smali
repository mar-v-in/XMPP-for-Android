.class public Lorg/jivesoftware/smack/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/util/Base64$InputStream;,
        Lorg/jivesoftware/smack/util/Base64$OutputStream;
    }
.end annotation


# static fields
.field public static final DECODE:I = 0x0

.field public static final DONT_BREAK_LINES:I = 0x8

.field public static final ENCODE:I = 0x1

.field private static final EQUALS_SIGN:B = 0x3dt

.field private static final EQUALS_SIGN_ENC:B = -0x1t

.field public static final GZIP:I = 0x2

.field private static final MAX_LINE_LENGTH:I = 0x4c

.field private static final NEW_LINE:B = 0xat

.field public static final NO_OPTIONS:I = 0x0

.field public static final ORDERED:I = 0x20

.field private static final PREFERRED_ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final URL_SAFE:I = 0x10

.field private static final WHITE_SPACE_ENC:B = -0x5t

.field private static final _ORDERED_ALPHABET:[B

.field private static final _ORDERED_DECODABET:[B

.field private static final _STANDARD_ALPHABET:[B

.field private static final _STANDARD_DECODABET:[B

.field private static final _URL_SAFE_ALPHABET:[B

.field private static final _URL_SAFE_DECODABET:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x5

    const/16 v3, -0x9

    .line 582
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jivesoftware/smack/util/Base64;->_STANDARD_ALPHABET:[B

    .line 601
    const/16 v0, 0x7f

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v3, v0, v1

    aput-byte v3, v0, v5

    aput-byte v3, v0, v6

    aput-byte v3, v0, v7

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    .line 602
    aput-byte v3, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    .line 603
    aput-byte v4, v0, v1

    const/16 v1, 0xa

    aput-byte v4, v0, v1

    const/16 v1, 0xb

    .line 604
    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    .line 605
    aput-byte v4, v0, v1

    const/16 v1, 0xe

    .line 606
    aput-byte v3, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x10

    aput-byte v3, v0, v1

    const/16 v1, 0x11

    aput-byte v3, v0, v1

    const/16 v1, 0x12

    aput-byte v3, v0, v1

    const/16 v1, 0x13

    aput-byte v3, v0, v1

    const/16 v1, 0x14

    aput-byte v3, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    const/16 v1, 0x1b

    .line 608
    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

    const/16 v1, 0x1e

    aput-byte v3, v0, v1

    const/16 v1, 0x1f

    aput-byte v3, v0, v1

    const/16 v1, 0x20

    .line 609
    aput-byte v4, v0, v1

    const/16 v1, 0x21

    .line 610
    aput-byte v3, v0, v1

    const/16 v1, 0x22

    aput-byte v3, v0, v1

    const/16 v1, 0x23

    aput-byte v3, v0, v1

    const/16 v1, 0x24

    aput-byte v3, v0, v1

    const/16 v1, 0x25

    aput-byte v3, v0, v1

    const/16 v1, 0x26

    aput-byte v3, v0, v1

    const/16 v1, 0x27

    aput-byte v3, v0, v1

    const/16 v1, 0x28

    aput-byte v3, v0, v1

    const/16 v1, 0x29

    aput-byte v3, v0, v1

    const/16 v1, 0x2a

    aput-byte v3, v0, v1

    const/16 v1, 0x2b

    .line 611
    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    .line 612
    aput-byte v3, v0, v1

    const/16 v1, 0x2d

    aput-byte v3, v0, v1

    const/16 v1, 0x2e

    aput-byte v3, v0, v1

    const/16 v1, 0x2f

    .line 613
    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    .line 614
    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    .line 615
    aput-byte v3, v0, v1

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/16 v1, 0x3d

    .line 616
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    .line 617
    aput-byte v3, v0, v1

    const/16 v1, 0x3f

    aput-byte v3, v0, v1

    const/16 v1, 0x40

    aput-byte v3, v0, v1

    const/16 v1, 0x42

    .line 618
    aput-byte v5, v0, v1

    const/16 v1, 0x43

    aput-byte v6, v0, v1

    const/16 v1, 0x44

    aput-byte v7, v0, v1

    const/16 v1, 0x45

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    .line 620
    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    .line 622
    aput-byte v3, v0, v1

    const/16 v1, 0x5c

    aput-byte v3, v0, v1

    const/16 v1, 0x5d

    aput-byte v3, v0, v1

    const/16 v1, 0x5e

    aput-byte v3, v0, v1

    const/16 v1, 0x5f

    aput-byte v3, v0, v1

    const/16 v1, 0x60

    aput-byte v3, v0, v1

    const/16 v1, 0x61

    .line 623
    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    .line 625
    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    .line 627
    aput-byte v3, v0, v1

    const/16 v1, 0x7c

    aput-byte v3, v0, v1

    const/16 v1, 0x7d

    aput-byte v3, v0, v1

    const/16 v1, 0x7e

    aput-byte v3, v0, v1

    .line 601
    sput-object v0, Lorg/jivesoftware/smack/util/Base64;->_STANDARD_DECODABET:[B

    .line 651
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/jivesoftware/smack/util/Base64;->_URL_SAFE_ALPHABET:[B

    .line 669
    const/16 v0, 0x7f

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v3, v0, v1

    aput-byte v3, v0, v5

    aput-byte v3, v0, v6

    aput-byte v3, v0, v7

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    .line 670
    aput-byte v3, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    .line 671
    aput-byte v4, v0, v1

    const/16 v1, 0xa

    aput-byte v4, v0, v1

    const/16 v1, 0xb

    .line 672
    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    .line 673
    aput-byte v4, v0, v1

    const/16 v1, 0xe

    .line 674
    aput-byte v3, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x10

    aput-byte v3, v0, v1

    const/16 v1, 0x11

    aput-byte v3, v0, v1

    const/16 v1, 0x12

    aput-byte v3, v0, v1

    const/16 v1, 0x13

    aput-byte v3, v0, v1

    const/16 v1, 0x14

    aput-byte v3, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    const/16 v1, 0x1b

    .line 676
    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

    const/16 v1, 0x1e

    aput-byte v3, v0, v1

    const/16 v1, 0x1f

    aput-byte v3, v0, v1

    const/16 v1, 0x20

    .line 677
    aput-byte v4, v0, v1

    const/16 v1, 0x21

    .line 678
    aput-byte v3, v0, v1

    const/16 v1, 0x22

    aput-byte v3, v0, v1

    const/16 v1, 0x23

    aput-byte v3, v0, v1

    const/16 v1, 0x24

    aput-byte v3, v0, v1

    const/16 v1, 0x25

    aput-byte v3, v0, v1

    const/16 v1, 0x26

    aput-byte v3, v0, v1

    const/16 v1, 0x27

    aput-byte v3, v0, v1

    const/16 v1, 0x28

    aput-byte v3, v0, v1

    const/16 v1, 0x29

    aput-byte v3, v0, v1

    const/16 v1, 0x2a

    aput-byte v3, v0, v1

    const/16 v1, 0x2b

    .line 679
    aput-byte v3, v0, v1

    const/16 v1, 0x2c

    .line 680
    aput-byte v3, v0, v1

    const/16 v1, 0x2d

    .line 681
    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    .line 682
    aput-byte v3, v0, v1

    const/16 v1, 0x2f

    .line 683
    aput-byte v3, v0, v1

    const/16 v1, 0x30

    .line 684
    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    .line 685
    aput-byte v3, v0, v1

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/16 v1, 0x3d

    .line 686
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    .line 687
    aput-byte v3, v0, v1

    const/16 v1, 0x3f

    aput-byte v3, v0, v1

    const/16 v1, 0x40

    aput-byte v3, v0, v1

    const/16 v1, 0x42

    .line 688
    aput-byte v5, v0, v1

    const/16 v1, 0x43

    aput-byte v6, v0, v1

    const/16 v1, 0x44

    aput-byte v7, v0, v1

    const/16 v1, 0x45

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    .line 690
    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    .line 692
    aput-byte v3, v0, v1

    const/16 v1, 0x5c

    aput-byte v3, v0, v1

    const/16 v1, 0x5d

    aput-byte v3, v0, v1

    const/16 v1, 0x5e

    aput-byte v3, v0, v1

    const/16 v1, 0x5f

    .line 693
    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    .line 694
    aput-byte v3, v0, v1

    const/16 v1, 0x61

    .line 695
    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    .line 697
    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    .line 699
    aput-byte v3, v0, v1

    const/16 v1, 0x7c

    aput-byte v3, v0, v1

    const/16 v1, 0x7d

    aput-byte v3, v0, v1

    const/16 v1, 0x7e

    aput-byte v3, v0, v1

    .line 669
    sput-object v0, Lorg/jivesoftware/smack/util/Base64;->_URL_SAFE_DECODABET:[B

    .line 721
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/jivesoftware/smack/util/Base64;->_ORDERED_ALPHABET:[B

    .line 739
    const/16 v0, 0x7f

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v3, v0, v1

    aput-byte v3, v0, v5

    aput-byte v3, v0, v6

    aput-byte v3, v0, v7

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    .line 740
    aput-byte v3, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    .line 741
    aput-byte v4, v0, v1

    const/16 v1, 0xa

    aput-byte v4, v0, v1

    const/16 v1, 0xb

    .line 742
    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    .line 743
    aput-byte v4, v0, v1

    const/16 v1, 0xe

    .line 744
    aput-byte v3, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x10

    aput-byte v3, v0, v1

    const/16 v1, 0x11

    aput-byte v3, v0, v1

    const/16 v1, 0x12

    aput-byte v3, v0, v1

    const/16 v1, 0x13

    aput-byte v3, v0, v1

    const/16 v1, 0x14

    aput-byte v3, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    const/16 v1, 0x1b

    .line 746
    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

    const/16 v1, 0x1e

    aput-byte v3, v0, v1

    const/16 v1, 0x1f

    aput-byte v3, v0, v1

    const/16 v1, 0x20

    .line 747
    aput-byte v4, v0, v1

    const/16 v1, 0x21

    .line 748
    aput-byte v3, v0, v1

    const/16 v1, 0x22

    aput-byte v3, v0, v1

    const/16 v1, 0x23

    aput-byte v3, v0, v1

    const/16 v1, 0x24

    aput-byte v3, v0, v1

    const/16 v1, 0x25

    aput-byte v3, v0, v1

    const/16 v1, 0x26

    aput-byte v3, v0, v1

    const/16 v1, 0x27

    aput-byte v3, v0, v1

    const/16 v1, 0x28

    aput-byte v3, v0, v1

    const/16 v1, 0x29

    aput-byte v3, v0, v1

    const/16 v1, 0x2a

    aput-byte v3, v0, v1

    const/16 v1, 0x2b

    .line 749
    aput-byte v3, v0, v1

    const/16 v1, 0x2c

    .line 750
    aput-byte v3, v0, v1

    const/16 v1, 0x2e

    .line 752
    aput-byte v3, v0, v1

    const/16 v1, 0x2f

    .line 753
    aput-byte v3, v0, v1

    const/16 v1, 0x30

    .line 754
    aput-byte v5, v0, v1

    const/16 v1, 0x31

    aput-byte v6, v0, v1

    const/16 v1, 0x32

    aput-byte v7, v0, v1

    const/16 v1, 0x33

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    .line 755
    aput-byte v3, v0, v1

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/16 v1, 0x3d

    .line 756
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    .line 757
    aput-byte v3, v0, v1

    const/16 v1, 0x3f

    aput-byte v3, v0, v1

    const/16 v1, 0x40

    aput-byte v3, v0, v1

    const/16 v1, 0x41

    .line 758
    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    .line 760
    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    .line 762
    aput-byte v3, v0, v1

    const/16 v1, 0x5c

    aput-byte v3, v0, v1

    const/16 v1, 0x5d

    aput-byte v3, v0, v1

    const/16 v1, 0x5e

    aput-byte v3, v0, v1

    const/16 v1, 0x5f

    .line 763
    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    .line 764
    aput-byte v3, v0, v1

    const/16 v1, 0x61

    .line 765
    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    .line 767
    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    .line 769
    aput-byte v3, v0, v1

    const/16 v1, 0x7c

    aput-byte v3, v0, v1

    const/16 v1, 0x7d

    aput-byte v3, v0, v1

    const/16 v1, 0x7e

    aput-byte v3, v0, v1

    .line 739
    sput-object v0, Lorg/jivesoftware/smack/util/Base64;->_ORDERED_DECODABET:[B

    .line 76
    return-void

    .line 582
    :array_0
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 651
    :array_1
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    .line 721
    :array_2
    .array-data 0x1
        0x2dt
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x5ft
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1757
    return-void
.end method

.method static synthetic access$0(I)[B
    .locals 1
    .parameter

    .prologue
    .line 1687
    invoke-static {p0}, Lorg/jivesoftware/smack/util/Base64;->getAlphabet(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(I)[B
    .locals 1
    .parameter

    .prologue
    .line 1704
    invoke-static {p0}, Lorg/jivesoftware/smack/util/Base64;->getDecodabet(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2([BII[BII)[B
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1244
    invoke-static/range {p0 .. p5}, Lorg/jivesoftware/smack/util/Base64;->encode3to4([BII[BII)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3([BI[BII)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 963
    invoke-static {p0, p1, p2, p3, p4}, Lorg/jivesoftware/smack/util/Base64;->decode4to3([BI[BII)I

    move-result v0

    return v0
.end method

.method static synthetic access$4([B[BII)[B
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1208
    invoke-static {p0, p1, p2, p3}, Lorg/jivesoftware/smack/util/Base64;->encode3to4([B[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1
    .parameter "s"

    .prologue
    .line 855
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jivesoftware/smack/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;I)[B
    .locals 14
    .parameter "s"
    .parameter "options"

    .prologue
    const/4 v13, 0x0

    .line 872
    :try_start_0
    const-string v11, "UTF-8"

    invoke-virtual {p0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 880
    .local v5, bytes:[B
    :goto_0
    array-length v11, v5

    invoke-static {v5, v13, v11, p1}, Lorg/jivesoftware/smack/util/Base64;->decode([BIII)[B

    move-result-object v5

    .line 884
    if-eqz v5, :cond_0

    array-length v11, v5

    const/4 v12, 0x4

    if-lt v11, v12, :cond_0

    .line 886
    aget-byte v11, v5, v13

    and-int/lit16 v11, v11, 0xff

    const/4 v12, 0x1

    aget-byte v12, v5, v12

    shl-int/lit8 v12, v12, 0x8

    const v13, 0xff00

    and-int/2addr v12, v13

    or-int v8, v11, v12

    .line 887
    .local v8, head:I
    const v11, 0x8b1f

    if-ne v11, v8, :cond_0

    .line 888
    const/4 v0, 0x0

    .line 889
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    const/4 v6, 0x0

    .line 890
    .local v6, gzis:Ljava/util/zip/GZIPInputStream;
    const/4 v2, 0x0

    .line 891
    .local v2, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v11, 0x800

    new-array v4, v11, [B

    .line 892
    .local v4, buffer:[B
    const/4 v9, 0x0

    .line 895
    .local v9, length:I
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b

    .line 896
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .local v3, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c

    .line 897
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .local v1, bais:Ljava/io/ByteArrayInputStream;
    :try_start_3
    new-instance v7, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v7, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d

    .line 899
    .end local v6           #gzis:Ljava/util/zip/GZIPInputStream;
    .local v7, gzis:Ljava/util/zip/GZIPInputStream;
    :goto_1
    :try_start_4
    invoke-virtual {v7, v4}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v9

    if-gez v9, :cond_1

    .line 904
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v5

    .line 912
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 916
    :goto_2
    :try_start_6
    invoke-virtual {v7}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    .line 920
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    .line 928
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #buffer:[B
    .end local v7           #gzis:Ljava/util/zip/GZIPInputStream;
    .end local v8           #head:I
    .end local v9           #length:I
    :cond_0
    :goto_4
    return-object v5

    .line 874
    .end local v5           #bytes:[B
    :catch_0
    move-exception v10

    .line 875
    .local v10, uee:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .restart local v5       #bytes:[B
    goto :goto_0

    .line 900
    .end local v10           #uee:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #buffer:[B
    .restart local v7       #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v8       #head:I
    .restart local v9       #length:I
    :cond_1
    const/4 v11, 0x0

    :try_start_8
    invoke-virtual {v3, v4, v11, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    .line 907
    :catch_1
    move-exception v11

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .end local v7           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v6       #gzis:Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .line 912
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    :goto_5
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 916
    :goto_6
    :try_start_a
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 920
    :goto_7
    :try_start_b
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_4

    .line 921
    :catch_2
    move-exception v11

    goto :goto_4

    .line 910
    :catchall_0
    move-exception v11

    .line 912
    :goto_8
    :try_start_c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    .line 916
    :goto_9
    :try_start_d
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 920
    :goto_a
    :try_start_e
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    .line 923
    :goto_b
    throw v11

    .line 913
    :catch_3
    move-exception v11

    goto :goto_6

    .line 917
    :catch_4
    move-exception v11

    goto :goto_7

    .line 913
    :catch_5
    move-exception v12

    goto :goto_9

    .line 917
    :catch_6
    move-exception v12

    goto :goto_a

    .line 921
    :catch_7
    move-exception v12

    goto :goto_b

    .line 913
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v6           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #gzis:Ljava/util/zip/GZIPInputStream;
    :catch_8
    move-exception v11

    goto :goto_2

    .line 917
    :catch_9
    move-exception v11

    goto :goto_3

    .line 921
    :catch_a
    move-exception v11

    goto :goto_4

    .line 910
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .end local v7           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v6       #gzis:Ljava/util/zip/GZIPInputStream;
    :catchall_1
    move-exception v11

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_8

    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v11

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_8

    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v6           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #gzis:Ljava/util/zip/GZIPInputStream;
    :catchall_3
    move-exception v11

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .end local v7           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v6       #gzis:Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_8

    .line 907
    :catch_b
    move-exception v11

    goto :goto_5

    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_c
    move-exception v11

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_d
    move-exception v11

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_5
.end method

.method public static decode([BIII)[B
    .locals 15
    .parameter "source"
    .parameter "off"
    .parameter "len"
    .parameter "options"

    .prologue
    .line 799
    invoke-static/range {p3 .. p3}, Lorg/jivesoftware/smack/util/Base64;->getDecodabet(I)[B

    move-result-object v1

    .line 801
    .local v1, DECODABET:[B
    mul-int/lit8 v12, p2, 0x3

    div-int/lit8 v6, v12, 0x4

    .line 802
    .local v6, len34:I
    new-array v8, v6, [B

    .line 803
    .local v8, outBuff:[B
    const/4 v9, 0x0

    .line 805
    .local v9, outBuffPosn:I
    const/4 v12, 0x4

    new-array v2, v12, [B

    .line 806
    .local v2, b4:[B
    const/4 v3, 0x0

    .line 807
    .local v3, b4Posn:I
    const/4 v5, 0x0

    .line 808
    .local v5, i:I
    const/4 v10, 0x0

    .line 809
    .local v10, sbiCrop:B
    const/4 v11, 0x0

    .line 810
    .local v11, sbiDecode:B
    move/from16 v5, p1

    move v4, v3

    .end local v3           #b4Posn:I
    .local v4, b4Posn:I
    :goto_0
    add-int v12, p1, p2

    if-lt v5, v12, :cond_1

    move v3, v4

    .line 840
    .end local v4           #b4Posn:I
    .restart local v3       #b4Posn:I
    :cond_0
    new-array v7, v9, [B

    .line 841
    .local v7, out:[B
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v8, v12, v7, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 842
    .end local v7           #out:[B
    :goto_1
    return-object v7

    .line 811
    .end local v3           #b4Posn:I
    .restart local v4       #b4Posn:I
    :cond_1
    aget-byte v12, p0, v5

    and-int/lit8 v12, v12, 0x7f

    int-to-byte v10, v12

    .line 812
    aget-byte v11, v1, v10

    .line 814
    const/4 v12, -0x5

    if-lt v11, v12, :cond_3

    .line 817
    const/4 v12, -0x1

    if-lt v11, v12, :cond_4

    .line 818
    add-int/lit8 v3, v4, 0x1

    .end local v4           #b4Posn:I
    .restart local v3       #b4Posn:I
    aput-byte v10, v2, v4

    .line 819
    const/4 v12, 0x3

    if-le v3, v12, :cond_2

    .line 820
    const/4 v12, 0x0

    .line 821
    move/from16 v0, p3

    invoke-static {v2, v12, v8, v9, v0}, Lorg/jivesoftware/smack/util/Base64;->decode4to3([BI[BII)I

    move-result v12

    add-int/2addr v9, v12

    .line 822
    const/4 v3, 0x0

    .line 825
    const/16 v12, 0x3d

    if-eq v10, v12, :cond_0

    .line 810
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move v4, v3

    .end local v3           #b4Posn:I
    .restart local v4       #b4Posn:I
    goto :goto_0

    .line 834
    :cond_3
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Bad Base64 input character at "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 835
    aget-byte v14, p0, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "(decimal)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 834
    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 836
    const/4 v7, 0x0

    move v3, v4

    .end local v4           #b4Posn:I
    .restart local v3       #b4Posn:I
    goto :goto_1

    .end local v3           #b4Posn:I
    .restart local v4       #b4Posn:I
    :cond_4
    move v3, v4

    .end local v4           #b4Posn:I
    .restart local v3       #b4Posn:I
    goto :goto_2
.end method

.method private static decode4to3([BI[BII)I
    .locals 6
    .parameter "source"
    .parameter "srcOffset"
    .parameter "destination"
    .parameter "destOffset"
    .parameter "options"

    .prologue
    const/16 v4, 0x3d

    .line 965
    invoke-static {p4}, Lorg/jivesoftware/smack/util/Base64;->getDecodabet(I)[B

    move-result-object v0

    .line 968
    .local v0, DECODABET:[B
    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_0

    .line 973
    aget-byte v3, p0, p1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x12

    .line 974
    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xc

    .line 973
    or-int v2, v3, v4

    .line 976
    .local v2, outBuff:I
    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 977
    const/4 v3, 0x1

    .line 1025
    .end local v2           #outBuff:I
    :goto_0
    return v3

    .line 981
    :cond_0
    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_1

    .line 987
    aget-byte v3, p0, p1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x12

    .line 988
    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xc

    .line 987
    or-int/2addr v3, v4

    .line 989
    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x6

    .line 987
    or-int v2, v3, v4

    .line 991
    .restart local v2       #outBuff:I
    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 992
    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    .line 993
    const/4 v3, 0x2

    goto :goto_0

    .line 1006
    .end local v2           #outBuff:I
    :cond_1
    :try_start_0
    aget-byte v3, p0, p1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x12

    .line 1007
    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xc

    .line 1006
    or-int/2addr v3, v4

    .line 1008
    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x6

    .line 1006
    or-int/2addr v3, v4

    .line 1009
    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    .line 1006
    or-int v2, v3, v4

    .line 1011
    .restart local v2       #outBuff:I
    shr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 1012
    add-int/lit8 v3, p3, 0x1

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    .line 1013
    add-int/lit8 v3, p3, 0x2

    int-to-byte v4, v2

    aput-byte v4, p2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1015
    const/4 v3, 0x3

    goto :goto_0

    .line 1016
    .end local v2           #outBuff:I
    :catch_0
    move-exception v1

    .line 1017
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v5, p0, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1018
    aget-byte v5, p0, p1

    aget-byte v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1017
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1019
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, p1, 0x1

    aget-byte v5, p0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1020
    add-int/lit8 v5, p1, 0x1

    aget-byte v5, p0, v5

    aget-byte v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1019
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1021
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, p1, 0x2

    aget-byte v5, p0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1022
    add-int/lit8 v5, p1, 0x2

    aget-byte v5, p0, v5

    aget-byte v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1021
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1023
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, p1, 0x3

    aget-byte v5, p0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1024
    add-int/lit8 v5, p1, 0x3

    aget-byte v5, p0, v5

    aget-byte v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1023
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1025
    const/4 v3, -0x1

    goto/16 :goto_0
.end method

.method public static decodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "infile"
    .parameter "outfile"

    .prologue
    .line 1040
    invoke-static {p0}, Lorg/jivesoftware/smack/util/Base64;->decodeFromFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 1041
    .local v0, decoded:[B
    const/4 v2, 0x0

    .line 1043
    .local v2, out:Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    .line 1044
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1043
    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1052
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .line 1056
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 1047
    :catch_0
    move-exception v1

    .line 1048
    .local v1, ex:Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1052
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1053
    :catch_1
    move-exception v4

    goto :goto_0

    .line 1050
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 1052
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1055
    :goto_3
    throw v4

    .line 1053
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_2
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_0

    :catch_3
    move-exception v5

    goto :goto_3

    .line 1050
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_2

    .line 1047
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static decodeFromFile(Ljava/lang/String;)[B
    .locals 13
    .parameter "filename"

    .prologue
    const/4 v8, 0x0

    .line 1068
    move-object v3, v8

    check-cast v3, [B

    .line 1069
    .local v3, decodedData:[B
    const/4 v0, 0x0

    .line 1072
    .local v0, bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1073
    .local v5, file:Ljava/io/File;
    const/4 v2, 0x0

    check-cast v2, [B

    .line 1074
    .local v2, buffer:[B
    const/4 v6, 0x0

    .line 1075
    .local v6, length:I
    const/4 v7, 0x0

    .line 1078
    .local v7, numBytes:I
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/32 v11, 0x7fffffff

    cmp-long v9, v9, v11

    if-lez v9, :cond_0

    .line 1079
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 1080
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "File is too big for this convenience method ("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1081
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " bytes)."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1080
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1105
    :try_start_1
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/Base64$InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1110
    .end local v2           #buffer:[B
    .end local v5           #file:Ljava/io/File;
    .end local v6           #length:I
    .end local v7           #numBytes:I
    :goto_0
    return-object v8

    .line 1084
    .restart local v2       #buffer:[B
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #length:I
    .restart local v7       #numBytes:I
    :cond_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v2, v8, [B

    .line 1087
    new-instance v1, Lorg/jivesoftware/smack/util/Base64$InputStream;

    new-instance v8, Ljava/io/BufferedInputStream;

    .line 1088
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v9, 0x0

    .line 1087
    invoke-direct {v1, v8, v9}, Lorg/jivesoftware/smack/util/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1091
    .end local v0           #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    .local v1, bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    :goto_1
    const/16 v8, 0x1000

    :try_start_3
    invoke-virtual {v1, v2, v6, v8}, Lorg/jivesoftware/smack/util/Base64$InputStream;->read([BII)I

    move-result v7

    if-gez v7, :cond_1

    .line 1096
    new-array v3, v6, [B

    .line 1097
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v8, v3, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 1105
    :try_start_4
    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/Base64$InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v0, v1

    .end local v1           #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    .end local v2           #buffer:[B
    .end local v5           #file:Ljava/io/File;
    .end local v6           #length:I
    .end local v7           #numBytes:I
    .restart local v0       #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    :goto_2
    move-object v8, v3

    .line 1110
    goto :goto_0

    .line 1092
    .end local v0           #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    .restart local v1       #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    .restart local v2       #buffer:[B
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #length:I
    .restart local v7       #numBytes:I
    :cond_1
    add-int/2addr v6, v7

    goto :goto_1

    .line 1100
    .end local v1           #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    .end local v2           #buffer:[B
    .end local v5           #file:Ljava/io/File;
    .end local v6           #length:I
    .end local v7           #numBytes:I
    .restart local v0       #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    :catch_0
    move-exception v4

    .line 1101
    .local v4, e:Ljava/io/IOException;
    :goto_3
    :try_start_5
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Error decoding from file "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1105
    :try_start_6
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/Base64$InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 1106
    :catch_1
    move-exception v8

    goto :goto_2

    .line 1103
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 1105
    :goto_4
    :try_start_7
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/Base64$InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 1108
    :goto_5
    throw v8

    .line 1106
    .end local v0           #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    .restart local v1       #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    .restart local v2       #buffer:[B
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #length:I
    .restart local v7       #numBytes:I
    :catch_2
    move-exception v8

    move-object v0, v1

    .end local v1           #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    .restart local v0       #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    goto :goto_2

    :catch_3
    move-exception v9

    goto :goto_0

    .end local v2           #buffer:[B
    .end local v5           #file:Ljava/io/File;
    .end local v6           #length:I
    .end local v7           #numBytes:I
    :catch_4
    move-exception v9

    goto :goto_5

    .line 1103
    .end local v0           #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    .restart local v1       #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    .restart local v2       #buffer:[B
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #length:I
    .restart local v7       #numBytes:I
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1           #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    .restart local v0       #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    goto :goto_4

    .line 1100
    .end local v0           #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    .restart local v1       #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    :catch_5
    move-exception v4

    move-object v0, v1

    .end local v1           #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    .restart local v0       #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    goto :goto_3
.end method

.method public static decodeToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "dataToDecode"
    .parameter "filename"

    .prologue
    .line 1125
    const/4 v3, 0x0

    .line 1126
    .local v3, success:Z
    const/4 v0, 0x0

    .line 1128
    .local v0, bos:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    :try_start_0
    new-instance v1, Lorg/jivesoftware/smack/util/Base64$OutputStream;

    .line 1129
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 1128
    invoke-direct {v1, v4, v5}, Lorg/jivesoftware/smack/util/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1130
    .end local v0           #bos:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .local v1, bos:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    :try_start_1
    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/jivesoftware/smack/util/Base64$OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1131
    const/4 v3, 0x1

    .line 1138
    :try_start_2
    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/Base64$OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .line 1143
    .end local v1           #bos:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v0       #bos:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    :goto_0
    return v3

    .line 1133
    :catch_0
    move-exception v2

    .line 1134
    .local v2, e:Ljava/io/IOException;
    :goto_1
    const/4 v3, 0x0

    .line 1138
    :try_start_3
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/Base64$OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1139
    :catch_1
    move-exception v4

    goto :goto_0

    .line 1136
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 1138
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/Base64$OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1141
    :goto_3
    throw v4

    .line 1139
    .end local v0           #bos:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v1       #bos:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    :catch_2
    move-exception v4

    move-object v0, v1

    .end local v1           #bos:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v0       #bos:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    goto :goto_0

    :catch_3
    move-exception v5

    goto :goto_3

    .line 1136
    .end local v0           #bos:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v1       #bos:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #bos:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v0       #bos:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    goto :goto_2

    .line 1133
    .end local v0           #bos:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v1       #bos:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #bos:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v0       #bos:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    goto :goto_1
.end method

.method public static decodeToObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .parameter "encodedObject"

    .prologue
    .line 1157
    invoke-static {p0}, Lorg/jivesoftware/smack/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v4

    .line 1159
    .local v4, objBytes:[B
    const/4 v0, 0x0

    .line 1160
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    const/4 v5, 0x0

    .line 1161
    .local v5, ois:Ljava/io/ObjectInputStream;
    const/4 v3, 0x0

    .line 1164
    .local v3, obj:Ljava/lang/Object;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1165
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .local v1, bais:Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_a

    .line 1167
    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .local v6, ois:Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_b

    move-result-object v3

    .line 1179
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    .line 1183
    :goto_0
    :try_start_4
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object v5, v6

    .end local v6           #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    move-object v0, v1

    .line 1188
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .end local v3           #obj:Ljava/lang/Object;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    :goto_1
    return-object v3

    .line 1169
    .restart local v3       #obj:Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 1170
    .local v2, e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1171
    const/4 v3, 0x0

    .line 1179
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 1183
    :goto_3
    :try_start_7
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 1184
    :catch_1
    move-exception v7

    goto :goto_1

    .line 1173
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 1174
    .local v2, e:Ljava/lang/ClassNotFoundException;
    :goto_4
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1175
    const/4 v3, 0x0

    .line 1179
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 1183
    :goto_5
    :try_start_a
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_1

    .line 1184
    :catch_3
    move-exception v7

    goto :goto_1

    .line 1177
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v7

    .line 1179
    :goto_6
    :try_start_b
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 1183
    :goto_7
    :try_start_c
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 1186
    :goto_8
    throw v7

    .line 1184
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v6       #ois:Ljava/io/ObjectInputStream;
    :catch_4
    move-exception v7

    move-object v5, v6

    .end local v6           #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_1

    .line 1180
    .local v2, e:Ljava/io/IOException;
    :catch_5
    move-exception v7

    goto :goto_3

    .local v2, e:Ljava/lang/ClassNotFoundException;
    :catch_6
    move-exception v7

    goto :goto_5

    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_7
    move-exception v8

    goto :goto_7

    .line 1184
    :catch_8
    move-exception v8

    goto :goto_8

    .line 1180
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v6       #ois:Ljava/io/ObjectInputStream;
    :catch_9
    move-exception v7

    goto :goto_0

    .line 1177
    .end local v6           #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_6

    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v6       #ois:Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v7

    move-object v5, v6

    .end local v6           #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_6

    .line 1173
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    :catch_a
    move-exception v2

    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v6       #ois:Ljava/io/ObjectInputStream;
    :catch_b
    move-exception v2

    move-object v5, v6

    .end local v6           #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .line 1169
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    :catch_c
    move-exception v2

    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_2

    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v6       #ois:Ljava/io/ObjectInputStream;
    :catch_d
    move-exception v2

    move-object v5, v6

    .end local v6           #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_2
.end method

.method private static encode3to4([BII[BII)[B
    .locals 6
    .parameter "source"
    .parameter "srcOffset"
    .parameter "numSigBytes"
    .parameter "destination"
    .parameter "destOffset"
    .parameter "options"

    .prologue
    const/16 v5, 0x3d

    const/4 v2, 0x0

    .line 1246
    invoke-static {p5}, Lorg/jivesoftware/smack/util/Base64;->getAlphabet(I)[B

    move-result-object v0

    .line 1260
    .local v0, ALPHABET:[B
    if-lez p2, :cond_1

    aget-byte v3, p0, p1

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x8

    move v4, v3

    .line 1262
    :goto_0
    const/4 v3, 0x1

    if-le p2, v3, :cond_2

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x10

    .line 1260
    :goto_1
    or-int/2addr v3, v4

    .line 1263
    const/4 v4, 0x2

    if-le p2, v4, :cond_0

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x18

    .line 1260
    :cond_0
    or-int v1, v3, v2

    .line 1265
    .local v1, inBuff:I
    packed-switch p2, :pswitch_data_0

    .line 1288
    :goto_2
    return-object p3

    .end local v1           #inBuff:I
    :cond_1
    move v4, v2

    .line 1261
    goto :goto_0

    :cond_2
    move v3, v2

    .line 1262
    goto :goto_1

    .line 1267
    .restart local v1       #inBuff:I
    :pswitch_0
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 1268
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 1269
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 1270
    add-int/lit8 v2, p4, 0x3

    and-int/lit8 v3, v1, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    goto :goto_2

    .line 1274
    :pswitch_1
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 1275
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 1276
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 1277
    add-int/lit8 v2, p4, 0x3

    aput-byte v5, p3, v2

    goto :goto_2

    .line 1281
    :pswitch_2
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 1282
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 1283
    add-int/lit8 v2, p4, 0x2

    aput-byte v5, p3, v2

    .line 1284
    add-int/lit8 v2, p4, 0x3

    aput-byte v5, p3, v2

    goto :goto_2

    .line 1265
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static encode3to4([B[BII)[B
    .locals 6
    .parameter "b4"
    .parameter "threeBytes"
    .parameter "numSigBytes"
    .parameter "options"

    .prologue
    const/4 v1, 0x0

    .line 1210
    move-object v0, p1

    move v2, p2

    move-object v3, p0

    move v4, v1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/jivesoftware/smack/util/Base64;->encode3to4([BII[BII)[B

    .line 1211
    return-object p0
.end method

.method public static encodeBytes([B)Ljava/lang/String;
    .locals 2
    .parameter "source"

    .prologue
    const/4 v1, 0x0

    .line 1300
    array-length v0, p0

    invoke-static {p0, v1, v0, v1}, Lorg/jivesoftware/smack/util/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BI)Ljava/lang/String;
    .locals 2
    .parameter "source"
    .parameter "options"

    .prologue
    .line 1331
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/jivesoftware/smack/util/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BII)Ljava/lang/String;
    .locals 1
    .parameter "source"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 1346
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/jivesoftware/smack/util/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BIII)Ljava/lang/String;
    .locals 24
    .parameter "source"
    .parameter "off"
    .parameter "len"
    .parameter "options"

    .prologue
    .line 1382
    and-int/lit8 v16, p3, 0x8

    .line 1383
    .local v16, dontBreakLines:I
    and-int/lit8 v17, p3, 0x2

    .line 1386
    .local v17, gzip:I
    const/4 v4, 0x2

    move/from16 v0, v17

    if-ne v0, v4, :cond_0

    .line 1387
    const/4 v12, 0x0

    .line 1388
    .local v12, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v18, 0x0

    .line 1389
    .local v18, gzos:Ljava/util/zip/GZIPOutputStream;
    const/4 v10, 0x0

    .line 1393
    .local v10, b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    :try_start_0
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1394
    .end local v12           #baos:Ljava/io/ByteArrayOutputStream;
    .local v13, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v11, Lorg/jivesoftware/smack/util/Base64$OutputStream;

    or-int/lit8 v4, p3, 0x1

    invoke-direct {v11, v13, v4}, Lorg/jivesoftware/smack/util/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c

    .line 1395
    .end local v10           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .local v11, b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    :try_start_2
    new-instance v19, Ljava/util/zip/GZIPOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v11}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d

    .line 1397
    .end local v18           #gzos:Ljava/util/zip/GZIPOutputStream;
    .local v19, gzos:Ljava/util/zip/GZIPOutputStream;
    :try_start_3
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 1398
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e

    .line 1406
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    .line 1410
    :goto_0
    :try_start_5
    invoke-virtual {v11}, Lorg/jivesoftware/smack/util/Base64$OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a

    .line 1414
    :goto_1
    :try_start_6
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b

    .line 1421
    :goto_2
    :try_start_7
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1463
    .end local v11           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .end local v13           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v19           #gzos:Ljava/util/zip/GZIPOutputStream;
    :goto_3
    return-object v4

    .line 1400
    .restart local v10       #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v12       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_0
    move-exception v8

    .line 1401
    .local v8, e:Ljava/io/IOException;
    :goto_4
    :try_start_8
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1406
    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 1410
    :goto_5
    :try_start_a
    invoke-virtual {v10}, Lorg/jivesoftware/smack/util/Base64$OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 1414
    :goto_6
    :try_start_b
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 1402
    :goto_7
    const/4 v4, 0x0

    goto :goto_3

    .line 1404
    .end local v8           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 1406
    :goto_8
    :try_start_c
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 1410
    :goto_9
    :try_start_d
    invoke-virtual {v10}, Lorg/jivesoftware/smack/util/Base64$OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 1414
    :goto_a
    :try_start_e
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    .line 1417
    :goto_b
    throw v4

    .line 1423
    .end local v10           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .end local v12           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v18           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v11       #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v13       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_1
    move-exception v23

    .line 1424
    .local v23, uue:Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    goto :goto_3

    .line 1431
    .end local v11           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .end local v13           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v19           #gzos:Ljava/util/zip/GZIPOutputStream;
    .end local v23           #uue:Ljava/io/UnsupportedEncodingException;
    :cond_0
    if-nez v16, :cond_2

    const/4 v14, 0x1

    .line 1433
    .local v14, breakLines:Z
    :goto_c
    mul-int/lit8 v4, p2, 0x4

    div-int/lit8 v21, v4, 0x3

    .line 1435
    .local v21, len43:I
    rem-int/lit8 v4, p2, 0x3

    if-lez v4, :cond_3

    const/4 v4, 0x4

    .line 1434
    :goto_d
    add-int v5, v21, v4

    .line 1436
    if-eqz v14, :cond_4

    div-int/lit8 v4, v21, 0x4c

    .line 1434
    :goto_e
    add-int/2addr v4, v5

    new-array v7, v4, [B

    .line 1438
    .local v7, outBuff:[B
    const/4 v15, 0x0

    .line 1439
    .local v15, d:I
    const/4 v8, 0x0

    .line 1440
    .local v8, e:I
    add-int/lit8 v20, p2, -0x2

    .line 1441
    .local v20, len2:I
    const/16 v22, 0x0

    .line 1442
    .local v22, lineLength:I
    :goto_f
    move/from16 v0, v20

    if-lt v15, v0, :cond_5

    .line 1453
    move/from16 v0, p2

    if-ge v15, v0, :cond_1

    .line 1454
    add-int v5, v15, p1

    sub-int v6, p2, v15

    move-object/from16 v4, p0

    move/from16 v9, p3

    invoke-static/range {v4 .. v9}, Lorg/jivesoftware/smack/util/Base64;->encode3to4([BII[BII)[B

    .line 1455
    add-int/lit8 v8, v8, 0x4

    .line 1460
    :cond_1
    :try_start_f
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "UTF-8"

    invoke-direct {v4, v7, v5, v8, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_3

    .line 1462
    :catch_2
    move-exception v23

    .line 1463
    .restart local v23       #uue:Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v7, v5, v8}, Ljava/lang/String;-><init>([BII)V

    goto :goto_3

    .line 1431
    .end local v7           #outBuff:[B
    .end local v8           #e:I
    .end local v14           #breakLines:Z
    .end local v15           #d:I
    .end local v20           #len2:I
    .end local v21           #len43:I
    .end local v22           #lineLength:I
    .end local v23           #uue:Ljava/io/UnsupportedEncodingException;
    :cond_2
    const/4 v14, 0x0

    goto :goto_c

    .line 1435
    .restart local v14       #breakLines:Z
    .restart local v21       #len43:I
    :cond_3
    const/4 v4, 0x0

    goto :goto_d

    .line 1436
    :cond_4
    const/4 v4, 0x0

    goto :goto_e

    .line 1443
    .restart local v7       #outBuff:[B
    .restart local v8       #e:I
    .restart local v15       #d:I
    .restart local v20       #len2:I
    .restart local v22       #lineLength:I
    :cond_5
    add-int v5, v15, p1

    const/4 v6, 0x3

    move-object/from16 v4, p0

    move/from16 v9, p3

    invoke-static/range {v4 .. v9}, Lorg/jivesoftware/smack/util/Base64;->encode3to4([BII[BII)[B

    .line 1445
    add-int/lit8 v22, v22, 0x4

    .line 1446
    if-eqz v14, :cond_6

    const/16 v4, 0x4c

    move/from16 v0, v22

    if-ne v0, v4, :cond_6

    .line 1447
    add-int/lit8 v4, v8, 0x4

    const/16 v5, 0xa

    aput-byte v5, v7, v4

    .line 1448
    add-int/lit8 v8, v8, 0x1

    .line 1449
    const/16 v22, 0x0

    .line 1442
    :cond_6
    add-int/lit8 v15, v15, 0x3

    add-int/lit8 v8, v8, 0x4

    goto :goto_f

    .line 1407
    .end local v7           #outBuff:[B
    .end local v14           #breakLines:Z
    .end local v15           #d:I
    .end local v20           #len2:I
    .end local v21           #len43:I
    .end local v22           #lineLength:I
    .local v8, e:Ljava/io/IOException;
    .restart local v10       #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v12       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_3
    move-exception v4

    goto/16 :goto_5

    .line 1411
    :catch_4
    move-exception v4

    goto/16 :goto_6

    .line 1415
    :catch_5
    move-exception v4

    goto/16 :goto_7

    .line 1407
    .end local v8           #e:Ljava/io/IOException;
    :catch_6
    move-exception v5

    goto/16 :goto_9

    .line 1411
    :catch_7
    move-exception v5

    goto/16 :goto_a

    .line 1415
    :catch_8
    move-exception v5

    goto/16 :goto_b

    .line 1407
    .end local v10           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .end local v12           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v18           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v11       #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v13       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_9
    move-exception v4

    goto/16 :goto_0

    .line 1411
    :catch_a
    move-exception v4

    goto/16 :goto_1

    .line 1415
    :catch_b
    move-exception v4

    goto/16 :goto_2

    .line 1404
    .end local v11           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .end local v19           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v10       #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v18       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catchall_1
    move-exception v4

    move-object v12, v13

    .end local v13           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_8

    .end local v10           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .end local v12           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v11       #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v13       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v4

    move-object v10, v11

    .end local v11           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v10       #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    move-object v12, v13

    .end local v13           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_8

    .end local v10           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .end local v12           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v18           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v11       #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v13       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catchall_3
    move-exception v4

    move-object v10, v11

    .end local v11           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v10       #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    move-object/from16 v18, v19

    .end local v19           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v18       #gzos:Ljava/util/zip/GZIPOutputStream;
    move-object v12, v13

    .end local v13           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_8

    .line 1400
    .end local v12           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v13       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_c
    move-exception v8

    move-object v12, v13

    .end local v13           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_4

    .end local v10           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .end local v12           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v11       #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v13       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_d
    move-exception v8

    move-object v10, v11

    .end local v11           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v10       #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    move-object v12, v13

    .end local v13           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_4

    .end local v10           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .end local v12           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v18           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v11       #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v13       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_e
    move-exception v8

    move-object v10, v11

    .end local v11           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v10       #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    move-object/from16 v18, v19

    .end local v19           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v18       #gzos:Ljava/util/zip/GZIPOutputStream;
    move-object v12, v13

    .end local v13           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_4
.end method

.method public static encodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "infile"
    .parameter "outfile"

    .prologue
    .line 1480
    invoke-static {p0}, Lorg/jivesoftware/smack/util/Base64;->encodeFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1481
    .local v0, encoded:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1483
    .local v2, out:Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    .line 1484
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1483
    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1485
    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    :try_start_1
    const-string v4, "US-ASCII"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1492
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .line 1496
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 1487
    :catch_0
    move-exception v1

    .line 1488
    .local v1, ex:Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1492
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1493
    :catch_1
    move-exception v4

    goto :goto_0

    .line 1490
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 1492
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1495
    :goto_3
    throw v4

    .line 1493
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_2
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_0

    :catch_3
    move-exception v5

    goto :goto_3

    .line 1490
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_2

    .line 1487
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static encodeFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "filename"

    .prologue
    .line 1508
    const/4 v4, 0x0

    .line 1509
    .local v4, encodedData:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1512
    .local v0, bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1514
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    long-to-double v9, v9

    const-wide v11, 0x3ff6666666666666L

    mul-double/2addr v9, v11

    double-to-int v9, v9

    const/16 v10, 0x28

    .line 1513
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    new-array v2, v9, [B

    .line 1516
    .local v2, buffer:[B
    const/4 v7, 0x0

    .line 1517
    .local v7, length:I
    const/4 v8, 0x0

    .line 1520
    .local v8, numBytes:I
    new-instance v1, Lorg/jivesoftware/smack/util/Base64$InputStream;

    new-instance v9, Ljava/io/BufferedInputStream;

    .line 1521
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v10, 0x1

    .line 1520
    invoke-direct {v1, v9, v10}, Lorg/jivesoftware/smack/util/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1524
    .end local v0           #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    .local v1, bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    :goto_0
    const/16 v9, 0x1000

    :try_start_1
    invoke-virtual {v1, v2, v7, v9}, Lorg/jivesoftware/smack/util/Base64$InputStream;->read([BII)I

    move-result v8

    if-gez v8, :cond_0

    .line 1529
    new-instance v5, Ljava/lang/String;

    const/4 v9, 0x0

    .line 1530
    const-string v10, "UTF-8"

    .line 1529
    invoke-direct {v5, v2, v9, v7, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1538
    .end local v4           #encodedData:Ljava/lang/String;
    .local v5, encodedData:Ljava/lang/String;
    :try_start_2
    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/Base64$InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .end local v1           #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    .restart local v0       #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    move-object v4, v5

    .line 1543
    .end local v2           #buffer:[B
    .end local v5           #encodedData:Ljava/lang/String;
    .end local v6           #file:Ljava/io/File;
    .end local v7           #length:I
    .end local v8           #numBytes:I
    .restart local v4       #encodedData:Ljava/lang/String;
    :goto_1
    return-object v4

    .line 1525
    .end local v0           #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    .restart local v1       #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    .restart local v2       #buffer:[B
    .restart local v6       #file:Ljava/io/File;
    .restart local v7       #length:I
    .restart local v8       #numBytes:I
    :cond_0
    add-int/2addr v7, v8

    goto :goto_0

    .line 1533
    .end local v1           #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    .end local v2           #buffer:[B
    .end local v6           #file:Ljava/io/File;
    .end local v7           #length:I
    .end local v8           #numBytes:I
    .restart local v0       #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    :catch_0
    move-exception v3

    .line 1534
    .local v3, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Error encoding from file "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1538
    :try_start_4
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/Base64$InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1539
    :catch_1
    move-exception v9

    goto :goto_1

    .line 1536
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 1538
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/Base64$InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1541
    :goto_4
    throw v9

    .line 1539
    .end local v0           #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    .end local v4           #encodedData:Ljava/lang/String;
    .restart local v1       #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    .restart local v2       #buffer:[B
    .restart local v5       #encodedData:Ljava/lang/String;
    .restart local v6       #file:Ljava/io/File;
    .restart local v7       #length:I
    .restart local v8       #numBytes:I
    :catch_2
    move-exception v9

    move-object v0, v1

    .end local v1           #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    .restart local v0       #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    move-object v4, v5

    .end local v5           #encodedData:Ljava/lang/String;
    .restart local v4       #encodedData:Ljava/lang/String;
    goto :goto_1

    .end local v2           #buffer:[B
    .end local v6           #file:Ljava/io/File;
    .end local v7           #length:I
    .end local v8           #numBytes:I
    :catch_3
    move-exception v10

    goto :goto_4

    .line 1536
    .end local v0           #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    .restart local v1       #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    .restart local v2       #buffer:[B
    .restart local v6       #file:Ljava/io/File;
    .restart local v7       #length:I
    .restart local v8       #numBytes:I
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1           #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    .restart local v0       #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    goto :goto_3

    .line 1533
    .end local v0           #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    .restart local v1       #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1           #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    .restart local v0       #bis:Lorg/jivesoftware/smack/util/Base64$InputStream;
    goto :goto_2
.end method

.method public static encodeObject(Ljava/io/Serializable;)Ljava/lang/String;
    .locals 1
    .parameter "serializableObject"

    .prologue
    .line 1558
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jivesoftware/smack/util/Base64;->encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;
    .locals 14
    .parameter "serializableObject"
    .parameter "options"

    .prologue
    .line 1591
    const/4 v2, 0x0

    .line 1592
    .local v2, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .line 1593
    .local v0, b64os:Ljava/io/OutputStream;
    const/4 v8, 0x0

    .line 1594
    .local v8, oos:Ljava/io/ObjectOutputStream;
    const/4 v6, 0x0

    .line 1597
    .local v6, gzos:Ljava/util/zip/GZIPOutputStream;
    and-int/lit8 v5, p1, 0x2

    .line 1600
    .local v5, gzip:I
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1601
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .local v3, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v1, Lorg/jivesoftware/smack/util/Base64$OutputStream;

    or-int/lit8 v11, p1, 0x1

    invoke-direct {v1, v3, v11}, Lorg/jivesoftware/smack/util/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e

    .line 1604
    .end local v0           #b64os:Ljava/io/OutputStream;
    .local v1, b64os:Ljava/io/OutputStream;
    const/4 v11, 0x2

    if-ne v5, v11, :cond_0

    .line 1605
    :try_start_2
    new-instance v7, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v7, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f

    .line 1606
    .end local v6           #gzos:Ljava/util/zip/GZIPOutputStream;
    .local v7, gzos:Ljava/util/zip/GZIPOutputStream;
    :try_start_3
    new-instance v9, Ljava/io/ObjectOutputStream;

    invoke-direct {v9, v7}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_10

    .end local v8           #oos:Ljava/io/ObjectOutputStream;
    .local v9, oos:Ljava/io/ObjectOutputStream;
    move-object v6, v7

    .end local v7           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v6       #gzos:Ljava/util/zip/GZIPOutputStream;
    move-object v8, v9

    .line 1612
    .end local v9           #oos:Ljava/io/ObjectOutputStream;
    .restart local v8       #oos:Ljava/io/ObjectOutputStream;
    :goto_0
    :try_start_4
    invoke-virtual {v8, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_f

    .line 1620
    :try_start_5
    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a

    .line 1624
    :goto_1
    :try_start_6
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b

    .line 1628
    :goto_2
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c

    .line 1632
    :goto_3
    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_d

    .line 1639
    :goto_4
    :try_start_9
    new-instance v11, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    const-string v13, "UTF-8"

    invoke-direct {v11, v12, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_1

    move-object v0, v1

    .end local v1           #b64os:Ljava/io/OutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    move-object v2, v3

    .line 1642
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    :goto_5
    return-object v11

    .line 1609
    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :cond_0
    :try_start_a
    new-instance v9, Ljava/io/ObjectOutputStream;

    invoke-direct {v9, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_f

    .end local v8           #oos:Ljava/io/ObjectOutputStream;
    .restart local v9       #oos:Ljava/io/ObjectOutputStream;
    move-object v8, v9

    .end local v9           #oos:Ljava/io/ObjectOutputStream;
    .restart local v8       #oos:Ljava/io/ObjectOutputStream;
    goto :goto_0

    .line 1614
    .end local v1           #b64os:Ljava/io/OutputStream;
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v4

    .line 1615
    .local v4, e:Ljava/io/IOException;
    :goto_6
    :try_start_b
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1620
    :try_start_c
    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 1624
    :goto_7
    :try_start_d
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    .line 1628
    :goto_8
    :try_start_e
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    .line 1632
    :goto_9
    :try_start_f
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    .line 1616
    :goto_a
    const/4 v11, 0x0

    goto :goto_5

    .line 1618
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 1620
    :goto_b
    :try_start_10
    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    .line 1624
    :goto_c
    :try_start_11
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    .line 1628
    :goto_d
    :try_start_12
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    .line 1632
    :goto_e
    :try_start_13
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9

    .line 1635
    :goto_f
    throw v11

    .line 1641
    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v10

    .line 1642
    .local v10, uue:Ljava/io/UnsupportedEncodingException;
    new-instance v11, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    .end local v1           #b64os:Ljava/io/OutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .line 1621
    .end local v10           #uue:Ljava/io/UnsupportedEncodingException;
    .restart local v4       #e:Ljava/io/IOException;
    :catch_2
    move-exception v11

    goto :goto_7

    .line 1625
    :catch_3
    move-exception v11

    goto :goto_8

    .line 1629
    :catch_4
    move-exception v11

    goto :goto_9

    .line 1633
    :catch_5
    move-exception v11

    goto :goto_a

    .line 1621
    .end local v4           #e:Ljava/io/IOException;
    :catch_6
    move-exception v12

    goto :goto_c

    .line 1625
    :catch_7
    move-exception v12

    goto :goto_d

    .line 1629
    :catch_8
    move-exception v12

    goto :goto_e

    .line 1633
    :catch_9
    move-exception v12

    goto :goto_f

    .line 1621
    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_a
    move-exception v11

    goto :goto_1

    .line 1625
    :catch_b
    move-exception v11

    goto :goto_2

    .line 1629
    :catch_c
    move-exception v11

    goto :goto_3

    .line 1633
    :catch_d
    move-exception v11

    goto :goto_4

    .line 1618
    .end local v1           #b64os:Ljava/io/OutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    :catchall_1
    move-exception v11

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_b

    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v11

    move-object v0, v1

    .end local v1           #b64os:Ljava/io/OutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_b

    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v6           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catchall_3
    move-exception v11

    move-object v6, v7

    .end local v7           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v6       #gzos:Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .end local v1           #b64os:Ljava/io/OutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_b

    .line 1614
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_e
    move-exception v4

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_f
    move-exception v4

    move-object v0, v1

    .end local v1           #b64os:Ljava/io/OutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v6           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_10
    move-exception v4

    move-object v6, v7

    .end local v7           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v6       #gzos:Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .end local v1           #b64os:Ljava/io/OutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_6
.end method

.method public static encodeToFile([BLjava/lang/String;)Z
    .locals 6
    .parameter "dataToEncode"
    .parameter "filename"

    .prologue
    .line 1659
    const/4 v3, 0x0

    .line 1660
    .local v3, success:Z
    const/4 v0, 0x0

    .line 1662
    .local v0, bos:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    :try_start_0
    new-instance v1, Lorg/jivesoftware/smack/util/Base64$OutputStream;

    .line 1663
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 1662
    invoke-direct {v1, v4, v5}, Lorg/jivesoftware/smack/util/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1664
    .end local v0           #bos:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .local v1, bos:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    :try_start_1
    invoke-virtual {v1, p0}, Lorg/jivesoftware/smack/util/Base64$OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1665
    const/4 v3, 0x1

    .line 1673
    :try_start_2
    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/Base64$OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .line 1678
    .end local v1           #bos:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v0       #bos:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    :goto_0
    return v3

    .line 1667
    :catch_0
    move-exception v2

    .line 1669
    .local v2, e:Ljava/io/IOException;
    :goto_1
    const/4 v3, 0x0

    .line 1673
    :try_start_3
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/Base64$OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1674
    :catch_1
    move-exception v4

    goto :goto_0

    .line 1671
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 1673
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/Base64$OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1676
    :goto_3
    throw v4

    .line 1674
    .end local v0           #bos:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v1       #bos:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    :catch_2
    move-exception v4

    move-object v0, v1

    .end local v1           #bos:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v0       #bos:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    goto :goto_0

    :catch_3
    move-exception v5

    goto :goto_3

    .line 1671
    .end local v0           #bos:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v1       #bos:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #bos:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v0       #bos:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    goto :goto_2

    .line 1667
    .end local v0           #bos:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v1       #bos:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #bos:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v0       #bos:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    goto :goto_1
.end method

.method private static final getAlphabet(I)[B
    .locals 2
    .parameter "options"

    .prologue
    .line 1688
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 1689
    sget-object v0, Lorg/jivesoftware/smack/util/Base64;->_URL_SAFE_ALPHABET:[B

    .line 1693
    :goto_0
    return-object v0

    .line 1690
    :cond_0
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 1691
    sget-object v0, Lorg/jivesoftware/smack/util/Base64;->_ORDERED_ALPHABET:[B

    goto :goto_0

    .line 1693
    :cond_1
    sget-object v0, Lorg/jivesoftware/smack/util/Base64;->_STANDARD_ALPHABET:[B

    goto :goto_0
.end method

.method private static final getDecodabet(I)[B
    .locals 2
    .parameter "options"

    .prologue
    .line 1705
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 1706
    sget-object v0, Lorg/jivesoftware/smack/util/Base64;->_URL_SAFE_DECODABET:[B

    .line 1710
    :goto_0
    return-object v0

    .line 1707
    :cond_0
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 1708
    sget-object v0, Lorg/jivesoftware/smack/util/Base64;->_ORDERED_DECODABET:[B

    goto :goto_0

    .line 1710
    :cond_1
    sget-object v0, Lorg/jivesoftware/smack/util/Base64;->_STANDARD_DECODABET:[B

    goto :goto_0
.end method

.method public static final main([Ljava/lang/String;)V
    .locals 5
    .parameter "args"

    .prologue
    .line 1721
    array-length v3, p0

    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    .line 1722
    const-string v3, "Not enough arguments."

    invoke-static {v3}, Lorg/jivesoftware/smack/util/Base64;->usage(Ljava/lang/String;)V

    .line 1738
    :goto_0
    return-void

    .line 1725
    :cond_0
    const/4 v3, 0x0

    aget-object v0, p0, v3

    .line 1726
    .local v0, flag:Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v1, p0, v3

    .line 1727
    .local v1, infile:Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v2, p0, v3

    .line 1728
    .local v2, outfile:Ljava/lang/String;
    const-string v3, "-e"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1729
    invoke-static {v1, v2}, Lorg/jivesoftware/smack/util/Base64;->encodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1731
    :cond_1
    const-string v3, "-d"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1732
    invoke-static {v1, v2}, Lorg/jivesoftware/smack/util/Base64;->decodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1735
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown flag: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jivesoftware/smack/util/Base64;->usage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static final usage(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1749
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1750
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Usage: java Base64 -e|-d inputfile outputfile"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1751
    return-void
.end method
