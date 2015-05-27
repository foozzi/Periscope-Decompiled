.class Lo/ṙ;
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
.field final synthetic ऱ:Lo/ᵖ;

.field final synthetic খ:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lo/ᵖ;Ljava/util/ArrayList;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lo/ṙ;->ऱ:Lo/ᵖ;

    iput-object p2, p0, Lo/ṙ;->খ:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 165
    iget-object v0, p0, Lo/ṙ;->খ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˑ;

    move-object v3, v0

    .line 166
    iget-object v0, p0, Lo/ṙ;->ऱ:Lo/ᵖ;

    invoke-static {v0, v3}, Lo/ᵖ;->ˊ(Lo/ᵖ;Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 167
    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lo/ṙ;->খ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 169
    iget-object v0, p0, Lo/ṙ;->ऱ:Lo/ᵖ;

    invoke-static {v0}, Lo/ᵖ;->ˎ(Lo/ᵖ;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lo/ṙ;->খ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 170
    return-void
.end method
