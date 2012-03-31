.class public Lorg/apache/harmony/security/x509/PolicyConstraints;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "PolicyConstraints.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private encoding:[B

.field private final inhibitPolicyMapping:Ljava/math/BigInteger;

.field private final requireExplicitPolicy:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    new-instance v0, Lorg/apache/harmony/security/x509/PolicyConstraints$1;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 68
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v4

    .line 69
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    .line 67
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/PolicyConstraints$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/PolicyConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, v0, v0}, Lorg/apache/harmony/security/x509/PolicyConstraints;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 105
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .parameter "requireExplicitPolicy"
    .parameter "inhibitPolicyMapping"

    .prologue
    .line 148
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    .line 149
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->requireExplicitPolicy:Ljava/math/BigInteger;

    .line 150
    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .parameter "requireExplicitPolicy"
    .parameter "inhibitPolicyMapping"

    .prologue
    .line 115
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    .line 117
    iput-object p1, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->requireExplicitPolicy:Ljava/math/BigInteger;

    .line 118
    iput-object p2, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    .line 119
    return-void
.end method

.method private constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 0
    .parameter "requireExplicitPolicy"
    .parameter "inhibitPolicyMapping"
    .parameter "encoding"

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/x509/PolicyConstraints;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 130
    iput-object p3, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->encoding:[B

    .line 131
    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[BLorg/apache/harmony/security/x509/PolicyConstraints;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/x509/PolicyConstraints;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>([B)V

    .line 135
    sget-object v1, Lorg/apache/harmony/security/x509/PolicyConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/PolicyConstraints;

    .line 136
    .local v0, pc:Lorg/apache/harmony/security/x509/PolicyConstraints;
    iget-object v1, v0, Lorg/apache/harmony/security/x509/PolicyConstraints;->requireExplicitPolicy:Ljava/math/BigInteger;

    iput-object v1, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->requireExplicitPolicy:Ljava/math/BigInteger;

    .line 137
    iget-object v1, v0, Lorg/apache/harmony/security/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    iput-object v1, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    .line 138
    return-void
.end method

.method static synthetic access$1(Lorg/apache/harmony/security/x509/PolicyConstraints;)Ljava/math/BigInteger;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->requireExplicitPolicy:Ljava/math/BigInteger;

    return-object v0
.end method

.method static synthetic access$2(Lorg/apache/harmony/security/x509/PolicyConstraints;)Ljava/math/BigInteger;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    return-object v0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 3
    .parameter "buffer"
    .parameter "prefix"

    .prologue
    const/16 v2, 0xa

    .line 159
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "PolicyConstraints: [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->requireExplicitPolicy:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "  requireExplicitPolicy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->requireExplicitPolicy:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 164
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "  inhibitPolicyMapping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 168
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    return-void
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->encoding:[B

    if-nez v0, :cond_0

    .line 179
    sget-object v0, Lorg/apache/harmony/security/x509/PolicyConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->encoding:[B

    .line 181
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->encoding:[B

    return-object v0
.end method
