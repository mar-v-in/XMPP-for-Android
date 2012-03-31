.class Lorg/apache/harmony/luni/internal/net/www/MimeTable$1;
.super Ljava/lang/Object;
.source "MimeTable.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/luni/internal/net/www/MimeTable;-><init>()V
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
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/luni/internal/net/www/MimeTable;


# direct methods
.method constructor <init>(Lorg/apache/harmony/luni/internal/net/www/MimeTable;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/MimeTable$1;->this$0:Lorg/apache/harmony/luni/internal/net/www/MimeTable;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/MimeTable$1;->this$0:Lorg/apache/harmony/luni/internal/net/www/MimeTable;

    #calls: Lorg/apache/harmony/luni/internal/net/www/MimeTable;->getContentTypes()Ljava/io/InputStream;
    invoke-static {v0}, Lorg/apache/harmony/luni/internal/net/www/MimeTable;->access$0(Lorg/apache/harmony/luni/internal/net/www/MimeTable;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/MimeTable$1;->run()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
