.class Lo/ahv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zz$if;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bFv:Lo/ahu;


# direct methods
.method constructor <init>(Lo/ahu;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lo/ahv;->bFv:Lo/ahu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataSetChanged()V
    .locals 1

    .line 64
    iget-object v0, p0, Lo/ahv;->bFv:Lo/ahu;

    invoke-static {v0}, Lo/ahu;->ˊ(Lo/ahu;)Lo/ahg;

    move-result-object v0

    invoke-virtual {v0}, Lo/ahg;->notifyDataSetChanged()V

    .line 65
    return-void
.end method

.method public ᐟ(II)V
    .locals 1

    .line 79
    iget-object v0, p0, Lo/ahv;->bFv:Lo/ahu;

    invoke-static {v0}, Lo/ahu;->ˊ(Lo/ahu;)Lo/ahg;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/ahg;->יִ(II)V

    .line 80
    return-void
.end method

.method public יּ(II)V
    .locals 1

    .line 74
    iget-object v0, p0, Lo/ahv;->bFv:Lo/ahu;

    invoke-static {v0}, Lo/ahu;->ˊ(Lo/ahu;)Lo/ahg;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/ahg;->ᵣ(II)V

    .line 75
    return-void
.end method
