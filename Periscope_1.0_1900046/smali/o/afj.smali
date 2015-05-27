.class Lo/afj;
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

    .line 108
    iput-object p1, p0, Lo/afj;->bCs:Lo/afi;

    iput-object p2, p0, Lo/afj;->jb:Landroid/content/Context;

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

    .line 111
    iget-object v0, p0, Lo/afj;->jb:Landroid/content/Context;

    const-string v1, "Sharing on Twitter is not support in DEV"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 113
    return-void
.end method
