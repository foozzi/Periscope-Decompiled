.class Lo/afk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/age;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bCs:Lo/afi;

.field final synthetic jb:Landroid/content/Context;


# direct methods
.method constructor <init>(Lo/afi;Landroid/content/Context;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lo/afk;->bCs:Lo/afi;

    iput-object p2, p0, Lo/afk;->jb:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Ljava/lang/String;Ljava/lang/String;Lo/lz;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Ljava/lang/String;Lo/lz<Lo/om;>;)V"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lo/afk;->jb:Landroid/content/Context;

    const v1, 0x7f06003c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 125
    return-void
.end method
