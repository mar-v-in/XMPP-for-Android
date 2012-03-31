.class public Lorg/apache/harmony/javax/security/sasl/RealmCallback;
.super Lorg/apache/harmony/javax/security/auth/callback/TextInputCallback;
.source "RealmCallback.java"


# static fields
.field private static final serialVersionUID:J = -0x3c44466df60d730cL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "prompt"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/security/auth/callback/TextInputCallback;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "prompt"
    .parameter "defaultRealmInfo"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/javax/security/auth/callback/TextInputCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method
