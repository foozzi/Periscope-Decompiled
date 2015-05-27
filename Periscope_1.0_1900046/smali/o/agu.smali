.class Lo/agu;
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
.field final synthetic bDV:Lo/ags;

.field final synthetic এ:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lo/ags;Ljava/util/ArrayList;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lo/agu;->bDV:Lo/ags;

    iput-object p2, p0, Lo/agu;->এ:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 152
    iget-object v0, p0, Lo/agu;->এ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ags$if;

    move-object v3, v0

    .line 153
    iget-object v0, p0, Lo/agu;->bDV:Lo/ags;

    invoke-static {v0, v3}, Lo/ags;->ˊ(Lo/ags;Lo/ags$if;)V

    .line 154
    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lo/agu;->এ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 156
    iget-object v0, p0, Lo/agu;->bDV:Lo/ags;

    invoke-static {v0}, Lo/ags;->ˎ(Lo/ags;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lo/agu;->এ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method
