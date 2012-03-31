.class public Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;
.super Ljava/lang/Object;
.source "DefaultPolicyScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/DefaultPolicyScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeystoreEntry"
.end annotation


# instance fields
.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
