.class public Lorg/apache/harmony/security/x509/GeneralNames;
.super Ljava/lang/Object;
.source "GeneralNames.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private encoding:[B

.field private generalNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralNames$1;

    sget-object v1, Lorg/apache/harmony/security/x509/GeneralName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/GeneralNames$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, generalNames:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralName;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    .line 88
    return-void
.end method

.method private constructor <init>(Ljava/util/List;[B)V
    .locals 0
    .parameter
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralName;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, generalNames:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralName;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    .line 97
    iput-object p2, p0, Lorg/apache/harmony/security/x509/GeneralNames;->encoding:[B

    .line 98
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;[BLorg/apache/harmony/security/x509/GeneralNames;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/x509/GeneralNames;-><init>(Ljava/util/List;[B)V

    return-void
.end method

.method static synthetic access$1(Lorg/apache/harmony/security/x509/GeneralNames;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addName(Lorg/apache/harmony/security/x509/GeneralName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->encoding:[B

    .line 109
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 3
    .parameter "buffer"
    .parameter "prefix"

    .prologue
    .line 120
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    if-nez v1, :cond_1

    .line 128
    :cond_0
    return-void

    .line 123
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/GeneralName;

    .line 124
    .local v0, generalName:Lorg/apache/harmony/security/x509/GeneralName;
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 126
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->encoding:[B

    if-nez v0, :cond_0

    .line 150
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->encoding:[B

    .line 152
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->encoding:[B

    return-object v0
.end method

.method public getNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 162
    :cond_0
    const/4 v0, 0x0

    .line 164
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getPairsList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/List<*>;>;"
    iget-object v2, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    if-nez v2, :cond_1

    .line 181
    :cond_0
    return-object v1

    .line 177
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 178
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/x509/GeneralName;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/security/x509/GeneralName;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/GeneralName;->getAsList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
