.class public Lorg/apache/harmony/security/x509/NameConstraints;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "NameConstraints.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private encoding:[B

.field private final excludedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

.field private excluded_names:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralName;",
            ">;"
        }
    .end annotation
.end field

.field private final permittedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

.field private permitted_names:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 78
    new-instance v0, Lorg/apache/harmony/security/x509/NameConstraints$1;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 79
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v3, Lorg/apache/harmony/security/x509/GeneralSubtrees;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v4

    .line 80
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v3, Lorg/apache/harmony/security/x509/GeneralSubtrees;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    .line 78
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/NameConstraints$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/NameConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, v0, v0}, Lorg/apache/harmony/security/x509/NameConstraints;-><init>(Lorg/apache/harmony/security/x509/GeneralSubtrees;Lorg/apache/harmony/security/x509/GeneralSubtrees;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/GeneralSubtrees;Lorg/apache/harmony/security/x509/GeneralSubtrees;)V
    .locals 4
    .parameter "permittedSubtrees"
    .parameter "excludedSubtrees"

    .prologue
    .line 118
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    .line 120
    if-eqz p1, :cond_1

    .line 121
    invoke-virtual {p1}, Lorg/apache/harmony/security/x509/GeneralSubtrees;->getSubtrees()Ljava/util/List;

    move-result-object v1

    .line 122
    .local v1, ps:Ljava/util/List;,"Ljava/util/List<*>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 123
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 124
    const-string v3, "security.17D"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    .end local v1           #ps:Ljava/util/List;,"Ljava/util/List<*>;"
    :cond_1
    if-eqz p2, :cond_3

    .line 128
    invoke-virtual {p2}, Lorg/apache/harmony/security/x509/GeneralSubtrees;->getSubtrees()Ljava/util/List;

    move-result-object v0

    .line 129
    .local v0, es:Ljava/util/List;,"Ljava/util/List<*>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 130
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 131
    const-string v3, "security.17E"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    .end local v0           #es:Ljava/util/List;,"Ljava/util/List<*>;"
    :cond_3
    iput-object p1, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permittedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    .line 135
    iput-object p2, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excludedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    .line 136
    return-void
.end method

.method private constructor <init>(Lorg/apache/harmony/security/x509/GeneralSubtrees;Lorg/apache/harmony/security/x509/GeneralSubtrees;[B)V
    .locals 0
    .parameter "permittedSubtrees"
    .parameter "excludedSubtrees"
    .parameter "encoding"

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/x509/NameConstraints;-><init>(Lorg/apache/harmony/security/x509/GeneralSubtrees;Lorg/apache/harmony/security/x509/GeneralSubtrees;)V

    .line 147
    iput-object p3, p0, Lorg/apache/harmony/security/x509/NameConstraints;->encoding:[B

    .line 148
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/security/x509/GeneralSubtrees;Lorg/apache/harmony/security/x509/GeneralSubtrees;[BLorg/apache/harmony/security/x509/NameConstraints;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/x509/NameConstraints;-><init>(Lorg/apache/harmony/security/x509/GeneralSubtrees;Lorg/apache/harmony/security/x509/GeneralSubtrees;[B)V

    return-void
.end method

.method static synthetic access$1(Lorg/apache/harmony/security/x509/NameConstraints;)Lorg/apache/harmony/security/x509/GeneralSubtrees;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permittedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    return-object v0
.end method

.method static synthetic access$2(Lorg/apache/harmony/security/x509/NameConstraints;)Lorg/apache/harmony/security/x509/GeneralSubtrees;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excludedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    return-object v0
.end method

.method public static decode([B)Lorg/apache/harmony/security/x509/NameConstraints;
    .locals 1
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    sget-object v0, Lorg/apache/harmony/security/x509/NameConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/NameConstraints;

    return-object v0
.end method

.method private getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B
    .locals 4
    .parameter "cert"
    .parameter "OID"

    .prologue
    const/4 v3, 0x0

    .line 192
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 193
    .local v0, bytes:[B
    if-nez v0, :cond_0

    move-object v2, v3

    .line 198
    .end local v0           #bytes:[B
    :goto_0
    return-object v2

    .line 196
    .restart local v0       #bytes:[B
    :cond_0
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->decode([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    .end local v0           #bytes:[B
    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    move-object v2, v3

    .line 198
    goto :goto_0
.end method

.method private prepareNames()V
    .locals 6

    .prologue
    const/16 v5, 0x9

    .line 305
    new-array v3, v5, [Ljava/util/ArrayList;

    iput-object v3, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    .line 306
    iget-object v3, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permittedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    if-eqz v3, :cond_0

    .line 307
    iget-object v3, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permittedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    invoke-virtual {v3}, Lorg/apache/harmony/security/x509/GeneralSubtrees;->getSubtrees()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 308
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 319
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_0
    new-array v3, v5, [Ljava/util/ArrayList;

    iput-object v3, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excluded_names:[Ljava/util/ArrayList;

    .line 320
    iget-object v3, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excludedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    if-eqz v3, :cond_1

    .line 321
    iget-object v3, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excludedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    invoke-virtual {v3}, Lorg/apache/harmony/security/x509/GeneralSubtrees;->getSubtrees()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 322
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 332
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_1
    return-void

    .line 309
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/security/x509/GeneralSubtree;

    invoke-virtual {v3}, Lorg/apache/harmony/security/x509/GeneralSubtree;->getBase()Lorg/apache/harmony/security/x509/GeneralName;

    move-result-object v1

    .line 311
    .local v1, name:Lorg/apache/harmony/security/x509/GeneralName;
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/GeneralName;->getTag()I

    move-result v2

    .line 312
    .local v2, tag:I
    iget-object v3, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    if-nez v3, :cond_3

    .line 313
    iget-object v3, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    aput-object v4, v3, v2

    .line 315
    :cond_3
    iget-object v3, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 323
    .end local v1           #name:Lorg/apache/harmony/security/x509/GeneralName;
    .end local v2           #tag:I
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/security/x509/GeneralSubtree;

    invoke-virtual {v3}, Lorg/apache/harmony/security/x509/GeneralSubtree;->getBase()Lorg/apache/harmony/security/x509/GeneralName;

    move-result-object v1

    .line 325
    .restart local v1       #name:Lorg/apache/harmony/security/x509/GeneralName;
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/GeneralName;->getTag()I

    move-result v2

    .line 326
    .restart local v2       #tag:I
    iget-object v3, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excluded_names:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    if-nez v3, :cond_5

    .line 327
    iget-object v3, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excluded_names:[Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    aput-object v4, v3, v2

    .line 329
    :cond_5
    iget-object v3, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excluded_names:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 4
    .parameter "buffer"
    .parameter "prefix"

    .prologue
    .line 156
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "Name Constraints: [\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    iget-object v1, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permittedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "  Permitted: [\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    iget-object v1, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permittedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/GeneralSubtrees;->getSubtrees()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 162
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "  ]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excludedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    if-eqz v1, :cond_1

    .line 165
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "  Excluded: [\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    iget-object v1, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excludedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/GeneralSubtrees;->getSubtrees()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 169
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "  ]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    :cond_1
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    return-void

    .line 159
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 160
    .local v0, name:Ljava/lang/Object;
    check-cast v0, Lorg/apache/harmony/security/x509/GeneralSubtree;

    .end local v0           #name:Ljava/lang/Object;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lorg/apache/harmony/security/x509/GeneralSubtree;->dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 167
    .restart local v0       #name:Ljava/lang/Object;
    check-cast v0, Lorg/apache/harmony/security/x509/GeneralSubtree;

    .end local v0           #name:Ljava/lang/Object;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lorg/apache/harmony/security/x509/GeneralSubtree;->dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lorg/apache/harmony/security/x509/NameConstraints;->encoding:[B

    if-nez v0, :cond_0

    .line 182
    sget-object v0, Lorg/apache/harmony/security/x509/NameConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/NameConstraints;->encoding:[B

    .line 184
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/NameConstraints;->encoding:[B

    return-object v0
.end method

.method public isAcceptable(Ljava/security/cert/X509Certificate;)Z
    .locals 6
    .parameter "cert"

    .prologue
    const/4 v4, 0x4

    .line 271
    iget-object v3, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 272
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/NameConstraints;->prepareNames()V

    .line 275
    :cond_0
    const-string v3, "2.5.29.17"

    invoke-direct {p0, p1, v3}, Lorg/apache/harmony/security/x509/NameConstraints;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v0

    .line 278
    .local v0, bytes:[B
    if-nez v0, :cond_3

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .local v2, names:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralName;>;"
    :goto_0
    iget-object v3, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excluded_names:[Ljava/util/ArrayList;

    aget-object v3, v3, v4

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    aget-object v3, v3, v4

    if-eqz v3, :cond_2

    .line 291
    :cond_1
    :try_start_1
    new-instance v3, Lorg/apache/harmony/security/x509/GeneralName;

    const/4 v4, 0x4

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    .line 292
    invoke-virtual {v5}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(ILjava/lang/String;)V

    .line 291
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 297
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lorg/apache/harmony/security/x509/NameConstraints;->isAcceptable(Ljava/util/List;)Z

    move-result v3

    .end local v2           #names:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralName;>;"
    :goto_2
    return v3

    .line 282
    :cond_3
    :try_start_2
    sget-object v3, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v3, v0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/security/x509/GeneralNames;

    .line 283
    invoke-virtual {v3}, Lorg/apache/harmony/security/x509/GeneralNames;->getNames()Ljava/util/List;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    goto :goto_0

    .line 284
    :catch_0
    move-exception v1

    .line 286
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 287
    const/4 v3, 0x0

    goto :goto_2

    .line 293
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #names:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralName;>;"
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public isAcceptable(Ljava/util/List;)Z
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralName;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, names:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralName;>;"
    const/4 v7, 0x0

    const/16 v9, 0x9

    const/4 v8, 0x1

    .line 211
    iget-object v6, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 212
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/NameConstraints;->prepareNames()V

    .line 215
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 218
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/x509/GeneralName;>;"
    new-array v5, v9, [Z

    .line 221
    .local v5, types_presented:[Z
    new-array v3, v9, [Z

    .line 222
    .local v3, permitted_found:[Z
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 246
    const/4 v4, 0x0

    .local v4, type:I
    :goto_0
    if-lt v4, v9, :cond_7

    move v6, v8

    .line 251
    :goto_1
    return v6

    .line 223
    .end local v4           #type:I
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/security/x509/GeneralName;

    .line 224
    .local v2, name:Lorg/apache/harmony/security/x509/GeneralName;
    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/GeneralName;->getTag()I

    move-result v4

    .line 226
    .restart local v4       #type:I
    iget-object v6, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excluded_names:[Ljava/util/ArrayList;

    aget-object v6, v6, v4

    if-eqz v6, :cond_3

    .line 227
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v6, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excluded_names:[Ljava/util/ArrayList;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v0, v6, :cond_5

    .line 236
    .end local v0           #i:I
    :cond_3
    iget-object v6, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    aget-object v6, v6, v4

    if-eqz v6, :cond_1

    aget-boolean v6, v3, v4

    if-nez v6, :cond_1

    .line 237
    aput-boolean v8, v5, v4

    .line 238
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    iget-object v6, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 239
    iget-object v6, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    aget-object v6, v6, v4

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/harmony/security/x509/GeneralName;

    invoke-virtual {v6, v2}, Lorg/apache/harmony/security/x509/GeneralName;->isAcceptable(Lorg/apache/harmony/security/x509/GeneralName;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 241
    aput-boolean v8, v3, v4

    .line 238
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 228
    :cond_5
    iget-object v6, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excluded_names:[Ljava/util/ArrayList;

    aget-object v6, v6, v4

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/harmony/security/x509/GeneralName;

    invoke-virtual {v6, v2}, Lorg/apache/harmony/security/x509/GeneralName;->isAcceptable(Lorg/apache/harmony/security/x509/GeneralName;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v7

    .line 229
    goto :goto_1

    .line 227
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 247
    .end local v0           #i:I
    .end local v2           #name:Lorg/apache/harmony/security/x509/GeneralName;
    :cond_7
    aget-boolean v6, v5, v4

    if-eqz v6, :cond_8

    aget-boolean v6, v3, v4

    if-nez v6, :cond_8

    move v6, v7

    .line 248
    goto :goto_1

    .line 246
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
