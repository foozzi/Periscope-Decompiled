.class Lo/օ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic nS:Lo/ԍ;


# direct methods
.method constructor <init>(Lo/ԍ;)V
    .locals 0

    .line 999
    iput-object p1, p0, Lo/օ;->nS:Lo/ԍ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1002
    iget-object v0, p0, Lo/օ;->nS:Lo/ԍ;

    iget-object v0, v0, Lo/ԍ;->nP:Lo/ɬ$if;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/ɬ$if;->ᐩ(Z)V

    .line 1003
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1004
    return-void
.end method
