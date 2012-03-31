.class public Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;
.super Ljava/lang/Object;
.source "DefaultPolicyScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/DefaultPolicyScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionEntry"
.end annotation


# instance fields
.field public actions:Ljava/lang/String;

.field public klass:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public signers:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
