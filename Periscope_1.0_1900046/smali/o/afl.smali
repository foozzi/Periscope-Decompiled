.class Lo/afl;
.super Lo/lz;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/lz<Lo/om;>;"
    }
.end annotation


# instance fields
.field final synthetic bCs:Lo/afi;


# direct methods
.method constructor <init>(Lo/afi;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lo/afl;->bCs:Lo/afi;

    invoke-direct {p0}, Lo/lz;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/mf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/mf<Lo/om;>;)V"
        }
    .end annotation

    .line 278
    sget-object v0, Lo/vi$if;->bmE:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 279
    iget-object v0, p0, Lo/afl;->bCs:Lo/afi;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/afi;->ˊ(Lo/afi;Z)Z

    .line 280
    return-void
.end method

.method public ˊ(Lo/mo;)V
    .locals 3

    .line 284
    sget-object v0, Lo/vi$if;->bmF:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 285
    iget-object v0, p0, Lo/afl;->bCs:Lo/afi;

    invoke-static {v0}, Lo/afi;->ˊ(Lo/afi;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f060100

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 286
    return-void
.end method
