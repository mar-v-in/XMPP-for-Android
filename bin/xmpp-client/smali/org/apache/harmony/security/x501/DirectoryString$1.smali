.class Lorg/apache/harmony/security/x501/DirectoryString$1;
.super Lorg/apache/harmony/security/asn1/ASN1Choice;
.source "DirectoryString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x501/DirectoryString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 0
    .parameter "$anonymous0"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Choice;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 1
    return-void
.end method


# virtual methods
.method public getIndex(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public getObjectToEncode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "object"

    .prologue
    .line 59
    return-object p1
.end method
