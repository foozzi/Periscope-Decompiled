.class Lo/ᵟ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ܟ:Ljava/util/ArrayList;

.field final synthetic ऱ:Lo/ᵖ;


# direct methods
.method constructor <init>(Lo/ᵖ;Ljava/util/ArrayList;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lo/ᵟ;->ऱ:Lo/ᵖ;

    iput-object p2, p0, Lo/ᵟ;->ܟ:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 119
    iget-object v0, p0, Lo/ᵟ;->ܟ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᵖ$ˊ;

    move-object v7, v0

    .line 120
    iget-object v0, p0, Lo/ᵟ;->ऱ:Lo/ᵖ;

    iget-object v1, v7, Lo/ᵖ$ˊ;->ᓮ:Landroid/support/v7/widget/RecyclerView$ˑ;

    iget v2, v7, Lo/ᵖ$ˊ;->პ:I

    iget v3, v7, Lo/ᵖ$ˊ;->Ꮧ:I

    iget v4, v7, Lo/ᵖ$ˊ;->Ꮭ:I

    iget v5, v7, Lo/ᵖ$ˊ;->ᐱ:I

    invoke-static/range {v0 .. v5}, Lo/ᵖ;->ˊ(Lo/ᵖ;Landroid/support/v7/widget/RecyclerView$ˑ;IIII)V

    .line 122
    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lo/ᵟ;->ܟ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 124
    iget-object v0, p0, Lo/ᵟ;->ऱ:Lo/ᵖ;

    invoke-static {v0}, Lo/ᵖ;->ˊ(Lo/ᵖ;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lo/ᵟ;->ܟ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method
