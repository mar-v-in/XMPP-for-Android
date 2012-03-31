.class public Lorg/apache/harmony/security/x509/Extension;
.super Ljava/lang/Object;
.source "Extension.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence; = null

.field static final AUTHORITY_INFO_ACCESS:[I = null

.field static final AUTH_KEY_ID:[I = null

.field static final BASIC_CONSTRAINTS:[I = null

.field static final CERTIFICATE_ISSUER:[I = null

.field static final CERTIFICATE_POLICIES:[I = null

.field public static final CRITICAL:Z = true

.field static final CRL_DISTR_POINTS:[I

.field static final CRL_NUMBER:[I

.field static final EXTENDED_KEY_USAGE:[I

.field static final FRESHEST_CRL:[I

.field static final INHIBIT_ANY_POLICY:[I

.field static final INVALIDITY_DATE:[I

.field static final ISSUER_ALTERNATIVE_NAME:[I

.field static final ISSUING_DISTR_POINT:[I

.field static final ISSUING_DISTR_POINTS:[I

.field static final KEY_USAGE:[I

.field static final NAME_CONSTRAINTS:[I

.field public static final NON_CRITICAL:Z

.field static final POLICY_CONSTRAINTS:[I

.field static final POLICY_MAPPINGS:[I

.field static final PRIVATE_KEY_USAGE_PERIOD:[I

.field static final REASON_CODE:[I

.field static final SUBJECT_ALT_NAME:[I

.field static final SUBJECT_INFO_ACCESS:[I

.field static final SUBJ_DIRECTORY_ATTRS:[I

.field static final SUBJ_KEY_ID:[I


# instance fields
.field private final critical:Z

.field private encoding:[B

.field private final extnID:[I

.field private extnID_str:Ljava/lang/String;

.field private final extnValue:[B

.field protected extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

.field private rawExtnValue:[B

.field private valueDecoded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v2, 0x9

    const/4 v1, 0x4

    .line 58
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->SUBJ_DIRECTORY_ATTRS:[I

    .line 59
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->SUBJ_KEY_ID:[I

    .line 60
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->KEY_USAGE:[I

    .line 61
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->PRIVATE_KEY_USAGE_PERIOD:[I

    .line 62
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->SUBJECT_ALT_NAME:[I

    .line 63
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->ISSUER_ALTERNATIVE_NAME:[I

    .line 64
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->BASIC_CONSTRAINTS:[I

    .line 65
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->NAME_CONSTRAINTS:[I

    .line 66
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->CRL_DISTR_POINTS:[I

    .line 67
    new-array v0, v1, [I

    fill-array-data v0, :array_9

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->CERTIFICATE_POLICIES:[I

    .line 68
    new-array v0, v1, [I

    fill-array-data v0, :array_a

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->POLICY_MAPPINGS:[I

    .line 69
    new-array v0, v1, [I

    fill-array-data v0, :array_b

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->AUTH_KEY_ID:[I

    .line 70
    new-array v0, v1, [I

    fill-array-data v0, :array_c

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->POLICY_CONSTRAINTS:[I

    .line 71
    new-array v0, v1, [I

    fill-array-data v0, :array_d

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->EXTENDED_KEY_USAGE:[I

    .line 72
    new-array v0, v1, [I

    fill-array-data v0, :array_e

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->FRESHEST_CRL:[I

    .line 73
    new-array v0, v1, [I

    fill-array-data v0, :array_f

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->INHIBIT_ANY_POLICY:[I

    .line 74
    new-array v0, v2, [I

    fill-array-data v0, :array_10

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->AUTHORITY_INFO_ACCESS:[I

    .line 75
    new-array v0, v2, [I

    fill-array-data v0, :array_11

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->SUBJECT_INFO_ACCESS:[I

    .line 77
    new-array v0, v1, [I

    fill-array-data v0, :array_12

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->ISSUING_DISTR_POINT:[I

    .line 79
    new-array v0, v1, [I

    fill-array-data v0, :array_13

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->CRL_NUMBER:[I

    .line 80
    new-array v0, v1, [I

    fill-array-data v0, :array_14

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->CERTIFICATE_ISSUER:[I

    .line 81
    new-array v0, v1, [I

    fill-array-data v0, :array_15

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->INVALIDITY_DATE:[I

    .line 82
    new-array v0, v1, [I

    fill-array-data v0, :array_16

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->REASON_CODE:[I

    .line 83
    new-array v0, v1, [I

    fill-array-data v0, :array_17

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->ISSUING_DISTR_POINTS:[I

    .line 104
    new-instance v0, Lorg/apache/harmony/security/x509/Extension$2;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    .line 105
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 106
    new-instance v3, Lorg/apache/harmony/security/x509/Extension$1;

    invoke-direct {v3}, Lorg/apache/harmony/security/x509/Extension$1;-><init>()V

    aput-object v3, v1, v2

    .line 104
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/Extension$2;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 51
    return-void

    .line 58
    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data

    .line 59
    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    .line 60
    :array_2
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    .line 61
    :array_3
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 62
    :array_4
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data

    .line 63
    :array_5
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
    .end array-data

    .line 64
    :array_6
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
    .end array-data

    .line 65
    :array_7
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data

    .line 66
    :array_8
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
    .end array-data

    .line 67
    :array_9
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data

    .line 68
    :array_a
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
    .end array-data

    .line 69
    :array_b
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
    .end array-data

    .line 70
    :array_c
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
    .end array-data

    .line 71
    :array_d
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
    .end array-data

    .line 72
    :array_e
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
    .end array-data

    .line 73
    :array_f
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
    .end array-data

    .line 74
    :array_10
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 75
    :array_11
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 77
    :array_12
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
    .end array-data

    .line 79
    :array_13
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    .line 80
    :array_14
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
    .end array-data

    .line 81
    :array_15
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
    .end array-data

    .line 82
    :array_16
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 83
    :array_17
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;ZLorg/apache/harmony/security/x509/ExtensionValue;)V
    .locals 1
    .parameter "extnID"
    .parameter "critical"
    .parameter "extnValueObject"

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    .line 239
    iput-object p1, p0, Lorg/apache/harmony/security/x509/Extension;->extnID_str:Ljava/lang/String;

    .line 240
    invoke-static {p1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    .line 241
    iput-boolean p2, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    .line 242
    iput-object p3, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    .line 244
    invoke-virtual {p3}, Lorg/apache/harmony/security/x509/ExtensionValue;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    .line 245
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z[B)V
    .locals 1
    .parameter "extnID"
    .parameter "critical"
    .parameter "extnValue"

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    .line 221
    iput-object p1, p0, Lorg/apache/harmony/security/x509/Extension;->extnID_str:Ljava/lang/String;

    .line 222
    invoke-static {p1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    .line 223
    iput-boolean p2, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    .line 224
    iput-object p3, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    .line 225
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1
    .parameter "extnID"
    .parameter "extnValue"

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/harmony/security/x509/Extension;-><init>(Ljava/lang/String;Z[B)V

    .line 257
    return-void
.end method

.method public constructor <init>([IZ[B)V
    .locals 1
    .parameter "extnID"
    .parameter "critical"
    .parameter "extnValue"

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    .line 177
    iput-object p1, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    .line 178
    iput-boolean p2, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    .line 179
    iput-object p3, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    .line 180
    return-void
.end method

.method private constructor <init>([IZ[B[B[BLorg/apache/harmony/security/x509/ExtensionValue;)V
    .locals 1
    .parameter "extnID"
    .parameter "critical"
    .parameter "extnValue"
    .parameter "rawExtnValue"
    .parameter "encoding"
    .parameter "decodedExtValue"

    .prologue
    .line 191
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/x509/Extension;-><init>([IZ[B)V

    .line 192
    iput-object p4, p0, Lorg/apache/harmony/security/x509/Extension;->rawExtnValue:[B

    .line 193
    iput-object p5, p0, Lorg/apache/harmony/security/x509/Extension;->encoding:[B

    .line 194
    iput-object p6, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    .line 195
    if-eqz p6, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    .line 196
    return-void

    .line 195
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>([IZ[B[B[BLorg/apache/harmony/security/x509/ExtensionValue;Lorg/apache/harmony/security/x509/Extension;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 189
    invoke-direct/range {p0 .. p6}, Lorg/apache/harmony/security/x509/Extension;-><init>([IZ[B[B[BLorg/apache/harmony/security/x509/ExtensionValue;)V

    return-void
.end method

.method public constructor <init>([I[B)V
    .locals 1
    .parameter "extnID"
    .parameter "extnValue"

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/harmony/security/x509/Extension;-><init>([IZ[B)V

    .line 208
    return-void
.end method

.method static synthetic access$0([I[I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-static {p0, p1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lorg/apache/harmony/security/x509/Extension;)[I
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    return-object v0
.end method

.method static synthetic access$3(Lorg/apache/harmony/security/x509/Extension;)Z
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    return v0
.end method

.method static synthetic access$4(Lorg/apache/harmony/security/x509/Extension;)[B
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    return-object v0
.end method

.method private decodeExtensionValue()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 260
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    if-eqz v0, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iput-boolean v2, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    .line 264
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->SUBJ_KEY_ID:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0}, Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;->decode([B)Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto :goto_0

    .line 266
    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->KEY_USAGE:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 267
    new-instance v0, Lorg/apache/harmony/security/x509/KeyUsage;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/KeyUsage;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto :goto_0

    .line 268
    :cond_3
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->SUBJECT_ALT_NAME:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 269
    new-instance v0, Lorg/apache/harmony/security/x509/AlternativeName;

    .line 270
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v2, v1}, Lorg/apache/harmony/security/x509/AlternativeName;-><init>(Z[B)V

    .line 269
    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto :goto_0

    .line 271
    :cond_4
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->ISSUER_ALTERNATIVE_NAME:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 272
    new-instance v0, Lorg/apache/harmony/security/x509/AlternativeName;

    .line 273
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v2, v1}, Lorg/apache/harmony/security/x509/AlternativeName;-><init>(Z[B)V

    .line 272
    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto :goto_0

    .line 274
    :cond_5
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->BASIC_CONSTRAINTS:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 275
    new-instance v0, Lorg/apache/harmony/security/x509/BasicConstraints;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/BasicConstraints;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto :goto_0

    .line 276
    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->NAME_CONSTRAINTS:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 277
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0}, Lorg/apache/harmony/security/x509/NameConstraints;->decode([B)Lorg/apache/harmony/security/x509/NameConstraints;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto :goto_0

    .line 278
    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CERTIFICATE_POLICIES:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 279
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0}, Lorg/apache/harmony/security/x509/CertificatePolicies;->decode([B)Lorg/apache/harmony/security/x509/CertificatePolicies;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_0

    .line 280
    :cond_8
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->AUTH_KEY_ID:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 281
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->decode([B)Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_0

    .line 282
    :cond_9
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->POLICY_CONSTRAINTS:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 283
    new-instance v0, Lorg/apache/harmony/security/x509/PolicyConstraints;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/PolicyConstraints;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_0

    .line 284
    :cond_a
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->EXTENDED_KEY_USAGE:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 285
    new-instance v0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_0

    .line 286
    :cond_b
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->INHIBIT_ANY_POLICY:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 287
    new-instance v0, Lorg/apache/harmony/security/x509/InhibitAnyPolicy;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/InhibitAnyPolicy;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_0

    .line 288
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CERTIFICATE_ISSUER:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 289
    new-instance v0, Lorg/apache/harmony/security/x509/CertificateIssuer;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/CertificateIssuer;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_0

    .line 290
    :cond_d
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CRL_DISTR_POINTS:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 291
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0}, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->decode([B)Lorg/apache/harmony/security/x509/CRLDistributionPoints;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_0

    .line 292
    :cond_e
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CERTIFICATE_ISSUER:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 293
    new-instance v0, Lorg/apache/harmony/security/x509/ReasonCode;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/ReasonCode;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_0

    .line 294
    :cond_f
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->INVALIDITY_DATE:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 295
    new-instance v0, Lorg/apache/harmony/security/x509/InvalidityDate;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/InvalidityDate;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_0

    .line 296
    :cond_10
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->REASON_CODE:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 297
    new-instance v0, Lorg/apache/harmony/security/x509/ReasonCode;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/ReasonCode;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_0

    .line 298
    :cond_11
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CRL_NUMBER:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 299
    new-instance v0, Lorg/apache/harmony/security/x509/CRLNumber;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/CRLNumber;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_0

    .line 300
    :cond_12
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->ISSUING_DISTR_POINTS:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 301
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->decode([B)Lorg/apache/harmony/security/x509/IssuingDistributionPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_0

    .line 302
    :cond_13
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->AUTHORITY_INFO_ACCESS:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 303
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0}, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->decode([B)Lorg/apache/harmony/security/x509/InfoAccessSyntax;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_0

    .line 304
    :cond_14
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->SUBJECT_INFO_ACCESS:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0}, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->decode([B)Lorg/apache/harmony/security/x509/InfoAccessSyntax;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_0
.end method

.method private static oidEquals([I[I)Z
    .locals 4
    .parameter "oid1"
    .parameter "oid2"

    .prologue
    const/4 v1, 0x0

    .line 154
    array-length v0, p0

    .line 155
    .local v0, length:I
    array-length v2, p1

    if-eq v0, v2, :cond_2

    .line 163
    :cond_0
    :goto_0
    return v1

    .line 159
    :cond_1
    add-int/lit8 v0, v0, -0x1

    aget v2, p0, v0

    aget v3, p1, v0

    if-ne v2, v3, :cond_0

    .line 158
    :cond_2
    if-gtz v0, :cond_1

    .line 163
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 3
    .parameter "buffer"
    .parameter "prefix"

    .prologue
    const/16 v2, 0xa

    .line 313
    const-string v0, "OID: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/Extension;->getExtnID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 314
    const-string v1, ", Critical: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 315
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    if-nez v0, :cond_0

    .line 317
    :try_start_0
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/Extension;->decodeExtensionValue()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/security/x509/ExtensionValue;->dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 373
    :goto_1
    return-void

    .line 326
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->SUBJ_DIRECTORY_ATTRS:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 328
    const-string v0, "Subject Directory Attributes Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 370
    :goto_2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 371
    const-string v1, "Unparsed Extension Value:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0, p2}, Lorg/apache/harmony/security/utils/Array;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 329
    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->SUBJ_KEY_ID:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 330
    const-string v0, "Subject Key Identifier Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 331
    :cond_3
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->KEY_USAGE:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 332
    const-string v0, "Key Usage Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 333
    :cond_4
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->PRIVATE_KEY_USAGE_PERIOD:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 334
    const-string v0, "Private Key Usage Period Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 335
    :cond_5
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->SUBJECT_ALT_NAME:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 336
    const-string v0, "Subject Alternative Name Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 337
    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->ISSUER_ALTERNATIVE_NAME:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 338
    const-string v0, "Issuer Alternative Name Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 339
    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->BASIC_CONSTRAINTS:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 340
    const-string v0, "Basic Constraints Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 341
    :cond_8
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->NAME_CONSTRAINTS:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 342
    const-string v0, "Name Constraints Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 343
    :cond_9
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CRL_DISTR_POINTS:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 344
    const-string v0, "CRL Distribution Points Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 345
    :cond_a
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CERTIFICATE_POLICIES:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 346
    const-string v0, "Certificate Policies Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 347
    :cond_b
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->POLICY_MAPPINGS:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 348
    const-string v0, "Policy Mappings Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 349
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->AUTH_KEY_ID:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 350
    const-string v0, "Authority Key Identifier Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 351
    :cond_d
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->POLICY_CONSTRAINTS:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 352
    const-string v0, "Policy Constraints Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 353
    :cond_e
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->EXTENDED_KEY_USAGE:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 354
    const-string v0, "Extended Key Usage Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 355
    :cond_f
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->INHIBIT_ANY_POLICY:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 356
    const-string v0, "Inhibit Any-Policy Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 357
    :cond_10
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->AUTHORITY_INFO_ACCESS:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 358
    const-string v0, "Authority Information Access Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 359
    :cond_11
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->SUBJECT_INFO_ACCESS:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 360
    const-string v0, "Subject Information Access Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 361
    :cond_12
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->INVALIDITY_DATE:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 362
    const-string v0, "Invalidity Date Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 363
    :cond_13
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CRL_NUMBER:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 364
    const-string v0, "CRL Number Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 365
    :cond_14
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->REASON_CODE:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 366
    const-string v0, "Reason Code Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 368
    :cond_15
    const-string v0, "Unknown Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 318
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "ext"

    .prologue
    const/4 v1, 0x0

    .line 377
    instance-of v2, p1, Lorg/apache/harmony/security/x509/Extension;

    if-nez v2, :cond_1

    .line 383
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 380
    check-cast v0, Lorg/apache/harmony/security/x509/Extension;

    .line 381
    .local v0, extn:Lorg/apache/harmony/security/x509/Extension;
    iget-object v2, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    iget-object v3, v0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    iget-boolean v2, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    iget-boolean v3, v0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    if-ne v2, v3, :cond_0

    .line 383
    iget-object v2, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    iget-object v3, v0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getBasicConstraintsValue()Lorg/apache/harmony/security/x509/BasicConstraints;
    .locals 1

    .prologue
    .line 387
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    if-nez v0, :cond_0

    .line 389
    :try_start_0
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/Extension;->decodeExtensionValue()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    instance-of v0, v0, Lorg/apache/harmony/security/x509/BasicConstraints;

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    check-cast v0, Lorg/apache/harmony/security/x509/BasicConstraints;

    .line 396
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 390
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getCritical()Z
    .locals 1

    .prologue
    .line 406
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    return v0
.end method

.method public getDecodedExtensionValue()Lorg/apache/harmony/security/x509/ExtensionValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 410
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    if-nez v0, :cond_0

    .line 411
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/Extension;->decodeExtensionValue()V

    .line 413
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->encoding:[B

    if-nez v0, :cond_0

    .line 423
    sget-object v0, Lorg/apache/harmony/security/x509/Extension;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->encoding:[B

    .line 425
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->encoding:[B

    return-object v0
.end method

.method public getExtnID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID_str:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 435
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    invoke-static {v0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID_str:Ljava/lang/String;

    .line 437
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID_str:Ljava/lang/String;

    return-object v0
.end method

.method public getExtnValue()[B
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    return-object v0
.end method

.method public getKeyUsageValue()Lorg/apache/harmony/security/x509/KeyUsage;
    .locals 1

    .prologue
    .line 450
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    if-nez v0, :cond_0

    .line 452
    :try_start_0
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/Extension;->decodeExtensionValue()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    instance-of v0, v0, Lorg/apache/harmony/security/x509/KeyUsage;

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    check-cast v0, Lorg/apache/harmony/security/x509/KeyUsage;

    .line 459
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 453
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getRawExtnValue()[B
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->rawExtnValue:[B

    if-nez v0, :cond_0

    .line 471
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->rawExtnValue:[B

    .line 473
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->rawExtnValue:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x25

    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 479
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 478
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
