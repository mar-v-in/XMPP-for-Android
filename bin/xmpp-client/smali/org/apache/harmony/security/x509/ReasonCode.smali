.class public Lorg/apache/harmony/security/x509/ReasonCode;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "ReasonCode.java"


# static fields
.field public static final AA_COMPROMISE:B = 0xat

.field public static final AFFILIATION_CHANGED:B = 0x3t

.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type; = null

.field public static final CA_COMPROMISE:B = 0x2t

.field public static final CERTIFICATE_HOLD:B = 0x6t

.field public static final CESSATION_OF_OPERATION:B = 0x5t

.field public static final KEY_COMPROMISE:B = 0x1t

.field public static final PRIVILEGE_WITHDRAWN:B = 0x9t

.field public static final REMOVE_FROM_CRL:B = 0x8t

.field public static final SUPERSEDED:B = 0x4t

.field public static final UNSPECIFIED:B


# instance fields
.field private final code:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Enumerated;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Enumerated;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/security/x509/ReasonCode;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 48
    return-void
.end method

.method public constructor <init>(B)V
    .locals 0
    .parameter "code"

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    .line 71
    iput-byte p1, p0, Lorg/apache/harmony/security/x509/ReasonCode;->code:B

    .line 72
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
    .line 75
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>([B)V

    .line 76
    sget-object v0, Lorg/apache/harmony/security/x509/ReasonCode;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/apache/harmony/security/x509/ReasonCode;->code:B

    .line 77
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 2
    .parameter "buffer"
    .parameter "prefix"

    .prologue
    .line 85
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "Reason Code: [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    iget-byte v0, p0, Lorg/apache/harmony/security/x509/ReasonCode;->code:B

    packed-switch v0, :pswitch_data_0

    .line 118
    :goto_0
    :pswitch_0
    const-string v0, " ]\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    return-void

    .line 88
    :pswitch_1
    const-string v0, "unspecified"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 91
    :pswitch_2
    const-string v0, "keyCompromise"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 94
    :pswitch_3
    const-string v0, "cACompromise"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 97
    :pswitch_4
    const-string v0, "affiliationChanged"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 100
    :pswitch_5
    const-string v0, "superseded"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 103
    :pswitch_6
    const-string v0, "cessationOfOperation"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 106
    :pswitch_7
    const-string v0, "certificateHold"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 109
    :pswitch_8
    const-string v0, "removeFromCRL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 112
    :pswitch_9
    const-string v0, "privilegeWithdrawn"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 115
    :pswitch_a
    const-string v0, "aACompromise"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 122
    iget-byte v0, p0, Lorg/apache/harmony/security/x509/ReasonCode;->code:B

    return v0
.end method

.method public getEncoded()[B
    .locals 4

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ReasonCode;->encoding:[B

    if-nez v0, :cond_0

    .line 133
    sget-object v0, Lorg/apache/harmony/security/x509/ReasonCode;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    iget-byte v3, p0, Lorg/apache/harmony/security/x509/ReasonCode;->code:B

    aput-byte v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/ReasonCode;->encoding:[B

    .line 135
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ReasonCode;->encoding:[B

    return-object v0
.end method
