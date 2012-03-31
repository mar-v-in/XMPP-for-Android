.class public Lorg/apache/harmony/security/asn1/ASN1Exception;
.super Ljava/io/IOException;
.source "ASN1Exception.java"


# static fields
.field private static final serialVersionUID:J = -0x316eb31660ab2b93L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 51
    return-void
.end method
