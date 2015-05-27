.class final Lo/ako;
.super Lo/aly;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic bIB:[Landroid/view/View$OnClickListener;

.field final synthetic bIC:I


# direct methods
.method constructor <init>(I[Landroid/view/View$OnClickListener;I)V
    .locals 0

    .line 250
    iput-object p2, p0, Lo/ako;->bIB:[Landroid/view/View$OnClickListener;

    iput p3, p0, Lo/ako;->bIC:I

    invoke-direct {p0, p1}, Lo/aly;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 253
    iget-object v0, p0, Lo/ako;->bIB:[Landroid/view/View$OnClickListener;

    iget v1, p0, Lo/ako;->bIC:I

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 254
    return-void
.end method
