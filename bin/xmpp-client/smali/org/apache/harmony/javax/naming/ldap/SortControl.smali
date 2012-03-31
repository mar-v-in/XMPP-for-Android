.class public final Lorg/apache/harmony/javax/naming/ldap/SortControl;
.super Lorg/apache/harmony/javax/naming/ldap/BasicControl;
.source "SortControl.java"


# static fields
.field static ASN1_SORTKEY:Lorg/apache/harmony/security/asn1/ASN1Sequence; = null

.field static ASN1_SORTKEYLIST:Lorg/apache/harmony/security/asn1/ASN1SequenceOf; = null

.field public static final OID:Ljava/lang/String; = "1.2.840.113556.1.4.473"

.field private static final serialVersionUID:J = -0x1b487fbb68567838L


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 44
    new-instance v0, Lorg/apache/harmony/javax/naming/ldap/SortControl$1;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 45
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v2

    aput-object v2, v1, v4

    .line 46
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    const/4 v2, 0x2

    .line 47
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    .line 44
    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/naming/ldap/SortControl$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/javax/naming/ldap/SortControl;->ASN1_SORTKEY:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 84
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    sget-object v1, Lorg/apache/harmony/javax/naming/ldap/SortControl;->ASN1_SORTKEY:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/javax/naming/ldap/SortControl;->ASN1_SORTKEYLIST:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 5
    .parameter "sortBy"
    .parameter "criticality"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 102
    const-string v1, "1.2.840.113556.1.4.473"

    invoke-direct {p0, v1, p2, v3}, Lorg/apache/harmony/javax/naming/ldap/BasicControl;-><init>(Ljava/lang/String;Z[B)V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/harmony/javax/naming/ldap/SortKey;>;"
    if-eqz p1, :cond_0

    .line 105
    new-instance v1, Lorg/apache/harmony/javax/naming/ldap/SortKey;

    invoke-direct {v1, p1, v4, v3}, Lorg/apache/harmony/javax/naming/ldap/SortKey;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :goto_0
    sget-object v1, Lorg/apache/harmony/javax/naming/ldap/SortControl;->ASN1_SORTKEYLIST:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v1, v0}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->encode(Ljava/lang/Object;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/javax/naming/ldap/SortControl;->value:[B

    .line 110
    return-void

    .line 107
    :cond_0
    new-instance v1, Lorg/apache/harmony/javax/naming/ldap/SortKey;

    const-string v2, ""

    invoke-direct {v1, v2, v4, v3}, Lorg/apache/harmony/javax/naming/ldap/SortKey;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 8
    .parameter "sortBy"
    .parameter "criticality"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 113
    const-string v2, "1.2.840.113556.1.4.473"

    invoke-direct {p0, v2, p2, v6}, Lorg/apache/harmony/javax/naming/ldap/BasicControl;-><init>(Ljava/lang/String;Z[B)V

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/harmony/javax/naming/ldap/SortKey;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 122
    sget-object v2, Lorg/apache/harmony/javax/naming/ldap/SortControl;->ASN1_SORTKEYLIST:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v2, v1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->encode(Ljava/lang/Object;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/javax/naming/ldap/SortControl;->value:[B

    .line 123
    return-void

    .line 115
    :cond_0
    aget-object v0, p1, v2

    .line 116
    .local v0, element:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 117
    new-instance v4, Lorg/apache/harmony/javax/naming/ldap/SortKey;

    invoke-direct {v4, v0, v7, v6}, Lorg/apache/harmony/javax/naming/ldap/SortKey;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    :cond_1
    new-instance v4, Lorg/apache/harmony/javax/naming/ldap/SortKey;

    const-string v5, ""

    invoke-direct {v4, v5, v7, v6}, Lorg/apache/harmony/javax/naming/ldap/SortKey;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public constructor <init>([Lorg/apache/harmony/javax/naming/ldap/SortKey;Z)V
    .locals 4
    .parameter "sortBy"
    .parameter "criticality"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    const-string v2, "1.2.840.113556.1.4.473"

    const/4 v3, 0x0

    invoke-direct {p0, v2, p2, v3}, Lorg/apache/harmony/javax/naming/ldap/BasicControl;-><init>(Ljava/lang/String;Z[B)V

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/harmony/javax/naming/ldap/SortKey;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 98
    sget-object v2, Lorg/apache/harmony/javax/naming/ldap/SortControl;->ASN1_SORTKEYLIST:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v2, v1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->encode(Ljava/lang/Object;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/javax/naming/ldap/SortControl;->value:[B

    .line 99
    return-void

    .line 95
    :cond_0
    aget-object v0, p1, v2

    .line 96
    .local v0, element:Lorg/apache/harmony/javax/naming/ldap/SortKey;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
