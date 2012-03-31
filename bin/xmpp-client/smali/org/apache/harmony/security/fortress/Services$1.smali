.class Lorg/apache/harmony/security/fortress/Services$1;
.super Ljava/lang/Object;
.source "Services.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/fortress/Services;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    #calls: Lorg/apache/harmony/security/fortress/Services;->loadProviders()V
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->access$0()V

    .line 70
    const/4 v0, 0x0

    return-object v0
.end method
