.class Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$1;
.super Ljava/lang/Object;
.source "HttpURLConnectionImpl.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;-><init>(Ljava/net/URL;I)V
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
        "Ljava/net/ResponseCache;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;


# direct methods
.method constructor <init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$1;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$1;->run()Ljava/net/ResponseCache;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/net/ResponseCache;
    .locals 1

    .prologue
    .line 572
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    return-object v0
.end method
