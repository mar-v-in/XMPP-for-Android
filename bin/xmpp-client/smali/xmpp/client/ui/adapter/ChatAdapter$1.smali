.class Lxmpp/client/ui/adapter/ChatAdapter$1;
.super Ljava/lang/Object;
.source "ChatAdapter.java"

# interfaces
.implements Landroid/text/style/AlignmentSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxmpp/client/ui/adapter/ChatAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lxmpp/client/ui/adapter/ChatAdapter;


# direct methods
.method constructor <init>(Lxmpp/client/ui/adapter/ChatAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lxmpp/client/ui/adapter/ChatAdapter$1;->this$0:Lxmpp/client/ui/adapter/ChatAdapter;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object v0
.end method
