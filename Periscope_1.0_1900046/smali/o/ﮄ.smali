.class public Lo/ﮄ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aB:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lo/ﮄ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 304
    iget-object v0, p0, Lo/ﮄ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ai:Landroid/support/v7/widget/RecyclerView$ˎ;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lo/ﮄ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ai:Landroid/support/v7/widget/RecyclerView$ˎ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ˎ;->ĭ()V

    .line 307
    :cond_0
    iget-object v0, p0, Lo/ﮄ;->aB:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->ˊ(Landroid/support/v7/widget/RecyclerView;Z)Z

    .line 308
    return-void
.end method
