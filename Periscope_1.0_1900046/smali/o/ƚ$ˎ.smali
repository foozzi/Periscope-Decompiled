.class public Lo/ƚ$ˎ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ﭔ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ƚ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u02ce"
.end annotation


# instance fields
.field final synthetic โ:Lo/ƚ;

.field private ﻤ:Z

.field private ﻥ:I


# direct methods
.method protected constructor <init>(Lo/ƚ;)V
    .locals 1

    .line 577
    iput-object p1, p0, Lo/ƚ$ˎ;->โ:Lo/ƚ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ƚ$ˎ;->ﻤ:Z

    return-void
.end method


# virtual methods
.method public ᵢ(Landroid/view/View;)V
    .locals 2

    .line 590
    iget-object v0, p0, Lo/ƚ$ˎ;->โ:Lo/ƚ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ƚ;->setVisibility(I)V

    .line 591
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ƚ$ˎ;->ﻤ:Z

    .line 592
    return-void
.end method

.method public ⁱ(Landroid/view/View;)V
    .locals 2

    .line 596
    iget-boolean v0, p0, Lo/ƚ$ˎ;->ﻤ:Z

    if-eqz v0, :cond_0

    return-void

    .line 598
    :cond_0
    iget-object v0, p0, Lo/ƚ$ˎ;->โ:Lo/ƚ;

    const/4 v1, 0x0

    iput-object v1, v0, Lo/ƚ;->ﺓ:Lo/ᵘ;

    .line 599
    iget-object v0, p0, Lo/ƚ$ˎ;->โ:Lo/ƚ;

    iget v1, p0, Lo/ƚ$ˎ;->ﻥ:I

    invoke-virtual {v0, v1}, Lo/ƚ;->setVisibility(I)V

    .line 600
    return-void
.end method

.method public ﹶ(Landroid/view/View;)V
    .locals 1

    .line 604
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ƚ$ˎ;->ﻤ:Z

    .line 605
    return-void
.end method
