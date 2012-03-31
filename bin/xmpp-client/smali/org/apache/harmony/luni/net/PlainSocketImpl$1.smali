.class Lorg/apache/harmony/luni/net/PlainSocketImpl$1;
.super Ljava/lang/Object;
.source "PlainSocketImpl.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/luni/net/PlainSocketImpl;->getSocketImplField(Ljava/lang/String;)Ljava/lang/reflect/Field;
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
        "Ljava/lang/reflect/Field;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/luni/net/PlainSocketImpl;

.field private final synthetic val$fieldName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/harmony/luni/net/PlainSocketImpl;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl$1;->this$0:Lorg/apache/harmony/luni/net/PlainSocketImpl;

    iput-object p2, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl$1;->val$fieldName:Ljava/lang/String;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl$1;->run()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/reflect/Field;
    .locals 4

    .prologue
    .line 309
    const/4 v1, 0x0

    .line 311
    .local v1, field:Ljava/lang/reflect/Field;
    :try_start_0
    const-class v2, Ljava/net/SocketImpl;

    iget-object v3, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl$1;->val$fieldName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 312
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    return-object v1

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, e:Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
