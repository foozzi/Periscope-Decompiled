.class public Lo/ᵪ$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ﭔ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᵪ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field private ﻤ:Z

.field ﻥ:I

.field final synthetic ｆ:Lo/ᵪ;


# direct methods
.method protected constructor <init>(Lo/ᵪ;)V
    .locals 1

    .line 255
    iput-object p1, p0, Lo/ᵪ$if;->ｆ:Lo/ᵪ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᵪ$if;->ﻤ:Z

    return-void
.end method


# virtual methods
.method public ᵢ(Landroid/view/View;)V
    .locals 2

    .line 268
    iget-object v0, p0, Lo/ᵪ$if;->ｆ:Lo/ᵪ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ᵪ;->setVisibility(I)V

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᵪ$if;->ﻤ:Z

    .line 270
    return-void
.end method

.method public ⁱ(Landroid/view/View;)V
    .locals 2

    .line 274
    iget-boolean v0, p0, Lo/ᵪ$if;->ﻤ:Z

    if-eqz v0, :cond_0

    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lo/ᵪ$if;->ｆ:Lo/ᵪ;

    const/4 v1, 0x0

    iput-object v1, v0, Lo/ᵪ;->ﺓ:Lo/ᵘ;

    .line 277
    iget-object v0, p0, Lo/ᵪ$if;->ｆ:Lo/ᵪ;

    iget v1, p0, Lo/ᵪ$if;->ﻥ:I

    invoke-virtual {v0, v1}, Lo/ᵪ;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lo/ᵪ$if;->ｆ:Lo/ᵪ;

    iget-object v0, v0, Lo/ᵪ;->冖:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ᵪ$if;->ｆ:Lo/ᵪ;

    iget-object v0, v0, Lo/ᵪ;->Ἵ:Lo/ᖦ;

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lo/ᵪ$if;->ｆ:Lo/ᵪ;

    iget-object v0, v0, Lo/ᵪ;->Ἵ:Lo/ᖦ;

    iget v1, p0, Lo/ᵪ$if;->ﻥ:I

    invoke-virtual {v0, v1}, Lo/ᖦ;->setVisibility(I)V

    .line 281
    :cond_1
    return-void
.end method

.method public ﹶ(Landroid/view/View;)V
    .locals 1

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᵪ$if;->ﻤ:Z

    .line 286
    return-void
.end method
