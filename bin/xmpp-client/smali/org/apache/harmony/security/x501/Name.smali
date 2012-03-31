.class public Lorg/apache/harmony/security/x501/Name;
.super Ljava/lang/Object;
.source "Name.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

.field public static final ASN1_RDN:Lorg/apache/harmony/security/asn1/ASN1SetOf;


# instance fields
.field private canonicalString:Ljava/lang/String;

.field private volatile encoded:[B

.field private final rdn:Ljava/util/List;

.field private rfc1779String:Ljava/lang/String;

.field private rfc2253String:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    .line 74
    sget-object v1, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 73
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x501/Name;->ASN1_RDN:Lorg/apache/harmony/security/asn1/ASN1SetOf;

    .line 76
    new-instance v0, Lorg/apache/harmony/security/x501/Name$1;

    sget-object v1, Lorg/apache/harmony/security/x501/Name;->ASN1_RDN:Lorg/apache/harmony/security/asn1/ASN1SetOf;

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x501/Name$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lorg/apache/harmony/security/x509/DNParser;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/x509/DNParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/DNParser;->parse()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rdn:Ljava/util/List;

    .line 125
    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter "rdn"

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lorg/apache/harmony/security/x501/Name;->rdn:Ljava/util/List;

    .line 113
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lorg/apache/harmony/security/x501/Name;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x501/Name;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Lorg/apache/harmony/security/asn1/DerInputStream;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/asn1/DerInputStream;-><init>([B)V

    .line 101
    .local v0, in:Lorg/apache/harmony/security/asn1/DerInputStream;
    invoke-virtual {v0}, Lorg/apache/harmony/security/asn1/DerInputStream;->getEndOffset()I

    move-result v1

    array-length v2, p1

    if-eq v1, v2, :cond_0

    .line 102
    new-instance v1, Ljava/io/IOException;

    const-string v2, "security.111"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_0
    sget-object v1, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v1, v0}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    .line 107
    iget-object v1, v0, Lorg/apache/harmony/security/asn1/DerInputStream;->content:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lorg/apache/harmony/security/x501/Name;->rdn:Ljava/util/List;

    .line 108
    return-void
.end method

.method static synthetic access$1(Lorg/apache/harmony/security/x501/Name;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rdn:Ljava/util/List;

    return-object v0
.end method

.method private getName0(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "format"

    .prologue
    .line 216
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 219
    .local v4, name:Ljava/lang/StringBuffer;
    iget-object v7, p0, Lorg/apache/harmony/security/x501/Name;->rdn:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, i:I
    :goto_0
    if-gez v2, :cond_1

    .line 253
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 254
    .local v5, sName:Ljava/lang/String;
    const-string v7, "CANONICAL"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 255
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 257
    :cond_0
    return-object v5

    .line 220
    .end local v5           #sName:Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lorg/apache/harmony/security/x501/Name;->rdn:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 222
    .local v1, atavList:Ljava/util/List;
    const-string v7, "CANONICAL"

    if-ne v7, p1, :cond_2

    .line 223
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 225
    .local v6, sortedList:Ljava/util/List;
    new-instance v7, Lorg/apache/harmony/security/x501/AttributeTypeAndValueComparator;

    invoke-direct {v7}, Lorg/apache/harmony/security/x501/AttributeTypeAndValueComparator;-><init>()V

    .line 224
    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 226
    move-object v1, v6

    .line 230
    .end local v6           #sortedList:Ljava/util/List;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 231
    .local v3, it:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    .line 245
    if-eqz v2, :cond_4

    .line 246
    const/16 v7, 0x2c

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 247
    const-string v7, "RFC1779"

    if-ne p1, v7, :cond_4

    .line 248
    const/16 v7, 0x20

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 219
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 233
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    .line 234
    .local v0, _ava:Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
    invoke-virtual {v0, p1, v4}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->appendName(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 235
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 237
    const-string v7, "RFC1779"

    if-ne v7, p1, :cond_6

    .line 238
    const-string v7, " + "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 240
    :cond_6
    const/16 v7, 0x2b

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->encoded:[B

    if-nez v0, :cond_0

    .line 134
    sget-object v0, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->encoded:[B

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->encoded:[B

    return-object v0
.end method

.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "format"

    .prologue
    .line 153
    const-string v0, "RFC1779"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc1779String:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 156
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x501/Name;->getName0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc1779String:Ljava/lang/String;

    .line 158
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc1779String:Ljava/lang/String;

    .line 197
    :goto_0
    return-object v0

    .line 160
    :cond_1
    const-string v0, "RFC2253"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 162
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc2253String:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 163
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x501/Name;->getName0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc2253String:Ljava/lang/String;

    .line 165
    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc2253String:Ljava/lang/String;

    goto :goto_0

    .line 167
    :cond_3
    const-string v0, "CANONICAL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 169
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->canonicalString:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 170
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x501/Name;->getName0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->canonicalString:Ljava/lang/String;

    .line 172
    :cond_4
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->canonicalString:Ljava/lang/String;

    goto :goto_0

    .line 178
    :cond_5
    const-string v0, "RFC1779"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 180
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc1779String:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 181
    const-string v0, "RFC1779"

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/x501/Name;->getName0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc1779String:Ljava/lang/String;

    .line 183
    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc1779String:Ljava/lang/String;

    goto :goto_0

    .line 185
    :cond_7
    const-string v0, "RFC2253"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 187
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc2253String:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 188
    const-string v0, "RFC2253"

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/x501/Name;->getName0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc2253String:Ljava/lang/String;

    .line 190
    :cond_8
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc2253String:Ljava/lang/String;

    goto :goto_0

    .line 192
    :cond_9
    const-string v0, "CANONICAL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 194
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->canonicalString:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 195
    const-string v0, "CANONICAL"

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/x501/Name;->getName0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->canonicalString:Ljava/lang/String;

    .line 197
    :cond_a
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->canonicalString:Ljava/lang/String;

    goto :goto_0

    .line 200
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 201
    const-string v1, "security.177"

    .line 200
    invoke-static {v1, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 2

    .prologue
    .line 267
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "RFC2253"

    invoke-direct {p0, v1}, Lorg/apache/harmony/security/x501/Name;->getName0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
