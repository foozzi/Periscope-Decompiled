.class final Lo/ﮌ;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Ff:Landroid/content/Context;

.field final synthetic Fg:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lo/ﮌ;->Ff:Landroid/content/Context;

    iput p2, p0, Lo/ﮌ;->Fg:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lo/ﮌ;->Ff:Landroid/content/Context;

    iget v1, p0, Lo/ﮌ;->Fg:I

    invoke-static {v1}, Lo/ძ;->г(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
