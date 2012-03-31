.class Lcom/devsmart/android/ui/HorizontalListView$1;
.super Landroid/database/DataSetObserver;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devsmart/android/ui/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/devsmart/android/ui/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/devsmart/android/ui/HorizontalListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/devsmart/android/ui/HorizontalListView$1;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    .line 63
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 67
    iget-object v1, p0, Lcom/devsmart/android/ui/HorizontalListView$1;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    monitor-enter v1

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$1;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    const/4 v2, 0x1

    #setter for: Lcom/devsmart/android/ui/HorizontalListView;->mDataChanged:Z
    invoke-static {v0, v2}, Lcom/devsmart/android/ui/HorizontalListView;->access$2(Lcom/devsmart/android/ui/HorizontalListView;Z)V

    .line 67
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$1;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/devsmart/android/ui/HorizontalListView;->invalidate()V

    .line 71
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$1;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/devsmart/android/ui/HorizontalListView;->requestLayout()V

    .line 72
    return-void

    .line 67
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$1;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    #calls: Lcom/devsmart/android/ui/HorizontalListView;->reset()V
    invoke-static {v0}, Lcom/devsmart/android/ui/HorizontalListView;->access$3(Lcom/devsmart/android/ui/HorizontalListView;)V

    .line 77
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$1;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/devsmart/android/ui/HorizontalListView;->invalidate()V

    .line 78
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$1;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/devsmart/android/ui/HorizontalListView;->requestLayout()V

    .line 79
    return-void
.end method
