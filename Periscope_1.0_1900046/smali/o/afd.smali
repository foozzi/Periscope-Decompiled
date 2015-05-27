.class Lo/afd;
.super Lo/adj;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bBV:Lo/aet;


# direct methods
.method constructor <init>(Lo/aet;Landroid/content/Context;Lo/vn;Lo/aad;Lo/alo;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lo/afd;->bBV:Lo/aet;

    invoke-direct {p0, p2, p3, p4, p5}, Lo/adj;-><init>(Landroid/content/Context;Lo/vn;Lo/aad;Lo/alo;)V

    return-void
.end method


# virtual methods
.method public ʾ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 335
    iget-object v0, p0, Lo/afd;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ـ(Lo/aet;)Lo/vn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/vn;->ᔆ(Ljava/lang/String;)Ljava/lang/String;

    .line 336
    iget-object v0, p0, Lo/afd;->bBV:Lo/aet;

    invoke-static {v0, p1, p2, p3}, Lo/aet;->ˊ(Lo/aet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    return-void
.end method
