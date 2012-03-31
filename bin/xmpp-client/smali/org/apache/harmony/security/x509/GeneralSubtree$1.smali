.class Lorg/apache/harmony/security/x509/GeneralSubtree$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "GeneralSubtree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/GeneralSubtree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 2
    .parameter "$anonymous0"

    .prologue
    const/4 v1, 0x1

    .line 65
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 69
    new-array v0, v1, [B

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/GeneralSubtree$1;->setDefault(Ljava/lang/Object;I)V

    .line 70
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/GeneralSubtree$1;->setOptional(I)V

    .line 1
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 5
    .parameter "in"

    .prologue
    const/4 v3, 0x2

    .line 75
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 76
    .local v1, values:[Ljava/lang/Object;
    const/4 v0, -0x1

    .line 77
    .local v0, maximum:I
    aget-object v2, v1, v3

    if-eqz v2, :cond_0

    .line 78
    aget-object v2, v1, v3

    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v0

    .line 80
    :cond_0
    new-instance v3, Lorg/apache/harmony/security/x509/GeneralSubtree;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Lorg/apache/harmony/security/x509/GeneralName;

    .line 81
    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-static {v4}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v4

    .line 80
    invoke-direct {v3, v2, v4, v0}, Lorg/apache/harmony/security/x509/GeneralSubtree;-><init>(Lorg/apache/harmony/security/x509/GeneralName;II)V

    return-object v3
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .parameter "object"
    .parameter "values"

    .prologue
    .line 87
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/GeneralSubtree;

    .line 89
    .local v0, gs:Lorg/apache/harmony/security/x509/GeneralSubtree;
    const/4 v1, 0x0

    #getter for: Lorg/apache/harmony/security/x509/GeneralSubtree;->base:Lorg/apache/harmony/security/x509/GeneralName;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/GeneralSubtree;->access$0(Lorg/apache/harmony/security/x509/GeneralSubtree;)Lorg/apache/harmony/security/x509/GeneralName;

    move-result-object v2

    aput-object v2, p2, v1

    .line 90
    const/4 v1, 0x1

    #getter for: Lorg/apache/harmony/security/x509/GeneralSubtree;->minimum:I
    invoke-static {v0}, Lorg/apache/harmony/security/x509/GeneralSubtree;->access$1(Lorg/apache/harmony/security/x509/GeneralSubtree;)I

    move-result v2

    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p2, v1

    .line 91
    #getter for: Lorg/apache/harmony/security/x509/GeneralSubtree;->maximum:I
    invoke-static {v0}, Lorg/apache/harmony/security/x509/GeneralSubtree;->access$2(Lorg/apache/harmony/security/x509/GeneralSubtree;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 92
    const/4 v1, 0x2

    #getter for: Lorg/apache/harmony/security/x509/GeneralSubtree;->maximum:I
    invoke-static {v0}, Lorg/apache/harmony/security/x509/GeneralSubtree;->access$2(Lorg/apache/harmony/security/x509/GeneralSubtree;)I

    move-result v2

    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p2, v1

    .line 94
    :cond_0
    return-void
.end method
