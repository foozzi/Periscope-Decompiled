.class Lo/د$ˊ;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/د;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02ca"
.end annotation


# instance fields
.field final synthetic ĩ:Lo/د;


# direct methods
.method private constructor <init>(Lo/د;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lo/د$ˊ;->ĩ:Lo/د;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/د;Lo/د$1;)V
    .locals 0

    .line 469
    invoke-direct {p0, p1}, Lo/د$ˊ;-><init>(Lo/د;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 472
    iget-object v0, p0, Lo/د$ˊ;->ĩ:Lo/د;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lo/د;->ﻣ:Z

    .line 473
    iget-object v0, p0, Lo/د$ˊ;->ĩ:Lo/د;

    invoke-virtual {v0}, Lo/د;->notifyDataSetChanged()V

    .line 474
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .line 478
    iget-object v0, p0, Lo/د$ˊ;->ĩ:Lo/د;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/د;->ﻣ:Z

    .line 479
    iget-object v0, p0, Lo/د$ˊ;->ĩ:Lo/د;

    invoke-virtual {v0}, Lo/د;->notifyDataSetInvalidated()V

    .line 480
    return-void
.end method
