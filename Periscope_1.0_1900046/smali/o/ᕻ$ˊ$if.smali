.class public final Lo/ᕻ$ˊ$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᕻ$ˊ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "if"
.end annotation


# instance fields
.field private final dU:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<TA;>;"
        }
    .end annotation
.end field

.field private final eb:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final fb:Z

.field final synthetic fc:Lo/ᕻ$ˊ;


# direct methods
.method constructor <init>(Lo/ᕻ$ˊ;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 748
    iput-object p1, p0, Lo/ᕻ$ˊ$if;->fc:Lo/ᕻ$ˊ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᕻ$ˊ$if;->fb:Z

    .line 750
    iput-object p2, p0, Lo/ᕻ$ˊ$if;->eb:Ljava/lang/Object;

    .line 751
    invoke-static {p2}, Lo/ᕻ;->ˇ(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lo/ᕻ$ˊ$if;->dU:Ljava/lang/Class;

    .line 752
    return-void
.end method


# virtual methods
.method public ˋ(Ljava/lang/Class;)Lo/ᓰ;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:Ljava/lang/Object;>(Ljava/lang/Class<TZ;>;)Lo/\u14f0<TA;TT;TZ;>;"
        }
    .end annotation

    .line 768
    iget-object v0, p0, Lo/ᕻ$ˊ$if;->fc:Lo/ᕻ$ˊ;

    iget-object v0, v0, Lo/ᕻ$ˊ;->fa:Lo/ᕻ;

    invoke-static {v0}, Lo/ᕻ;->ᐝ(Lo/ᕻ;)Lo/ᕻ$ˋ;

    move-result-object v0

    new-instance v1, Lo/ᓰ;

    iget-object v2, p0, Lo/ᕻ$ˊ$if;->fc:Lo/ᕻ$ˊ;

    iget-object v2, v2, Lo/ᕻ$ˊ;->fa:Lo/ᕻ;

    invoke-static {v2}, Lo/ᕻ;->ˊ(Lo/ᕻ;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lo/ᕻ$ˊ$if;->fc:Lo/ᕻ$ˊ;

    iget-object v3, v3, Lo/ᕻ$ˊ;->fa:Lo/ᕻ;

    invoke-static {v3}, Lo/ᕻ;->ˋ(Lo/ᕻ;)Lo/ᓲ;

    move-result-object v3

    iget-object v4, p0, Lo/ᕻ$ˊ$if;->dU:Ljava/lang/Class;

    iget-object v5, p0, Lo/ᕻ$ˊ$if;->fc:Lo/ᕻ$ˊ;

    invoke-static {v5}, Lo/ᕻ$ˊ;->ˊ(Lo/ᕻ$ˊ;)Lo/ɽ;

    move-result-object v5

    iget-object v6, p0, Lo/ᕻ$ˊ$if;->fc:Lo/ᕻ$ˊ;

    invoke-static {v6}, Lo/ᕻ$ˊ;->ˋ(Lo/ᕻ$ˊ;)Ljava/lang/Class;

    move-result-object v6

    iget-object v7, p0, Lo/ᕻ$ˊ$if;->fc:Lo/ᕻ$ˊ;

    iget-object v7, v7, Lo/ᕻ$ˊ;->fa:Lo/ᕻ;

    invoke-static {v7}, Lo/ᕻ;->ˎ(Lo/ᕻ;)Lo/ᐜ;

    move-result-object v8

    iget-object v7, p0, Lo/ᕻ$ˊ$if;->fc:Lo/ᕻ$ˊ;

    iget-object v7, v7, Lo/ᕻ$ˊ;->fa:Lo/ᕻ;

    invoke-static {v7}, Lo/ᕻ;->ˏ(Lo/ᕻ;)Lo/ধ;

    move-result-object v9

    iget-object v7, p0, Lo/ᕻ$ˊ$if;->fc:Lo/ᕻ$ˊ;

    iget-object v7, v7, Lo/ᕻ$ˊ;->fa:Lo/ᕻ;

    invoke-static {v7}, Lo/ᕻ;->ᐝ(Lo/ᕻ;)Lo/ᕻ$ˋ;

    move-result-object v10

    move-object v7, p1

    invoke-direct/range {v1 .. v10}, Lo/ᓰ;-><init>(Landroid/content/Context;Lo/ᓲ;Ljava/lang/Class;Lo/ɽ;Ljava/lang/Class;Ljava/lang/Class;Lo/ᐜ;Lo/ধ;Lo/ᕻ$ˋ;)V

    invoke-virtual {v0, v1}, Lo/ᕻ$ˋ;->ˋ(Lo/ເ;)Lo/ເ;

    move-result-object v0

    check-cast v0, Lo/ᓰ;

    move-object v11, v0

    .line 771
    iget-boolean v0, p0, Lo/ᕻ$ˊ$if;->fb:Z

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lo/ᕻ$ˊ$if;->eb:Ljava/lang/Object;

    invoke-virtual {v11, v0}, Lo/ᓰ;->ʴ(Ljava/lang/Object;)Lo/ເ;

    .line 774
    :cond_0
    return-object v11
.end method
