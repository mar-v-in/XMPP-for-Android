.class public Lorg/apache/harmony/security/x509/GeneralSubtrees;
.super Ljava/lang/Object;
.source "GeneralSubtrees.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private encoding:[B

.field private generalSubtrees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralSubtree;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralSubtrees$1;

    sget-object v1, Lorg/apache/harmony/security/x509/GeneralSubtree;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/GeneralSubtrees$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
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
            "Lorg/apache/harmony/security/x509/GeneralSubtree;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, generalSubtrees:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralSubtree;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->generalSubtrees:Ljava/util/List;

    .line 86
    return-void
.end method

.method static synthetic access$0(Lorg/apache/harmony/security/x509/GeneralSubtrees;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->generalSubtrees:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addSubtree(Lorg/apache/harmony/security/x509/GeneralSubtree;)Lorg/apache/harmony/security/x509/GeneralSubtrees;
    .locals 1
    .parameter "subtree"

    .prologue
    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->encoding:[B

    .line 97
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->generalSubtrees:Ljava/util/List;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->generalSubtrees:Ljava/util/List;

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->generalSubtrees:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    return-object p0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->encoding:[B

    if-nez v0, :cond_0

    .line 111
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->encoding:[B

    .line 113
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->encoding:[B

    return-object v0
.end method

.method public getSubtrees()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralSubtree;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->generalSubtrees:Ljava/util/List;

    return-object v0
.end method
