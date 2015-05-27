.class public abstract Lo/aif;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aif$if;
    }
.end annotation


# instance fields
.field public final bGa:Lo/amw;

.field public final bGb:Lo/aip;

.field public final bGc:I

.field public final bGd:I

.field public final bGe:I

.field public final bGf:I

.field public final bGg:I

.field public final bGh:I

.field public final bGi:I

.field public final statusBarColor:I


# direct methods
.method constructor <init>(Lo/amw;Lo/aip;IIIIIIII)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lo/aif;->bGa:Lo/amw;

    .line 36
    iput-object p2, p0, Lo/aif;->bGb:Lo/aip;

    .line 37
    invoke-virtual {p2}, Lo/aip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 38
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lo/aif;->bGd:I

    .line 39
    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lo/aif;->bGe:I

    .line 40
    invoke-virtual {v1, p5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lo/aif;->bGc:I

    .line 41
    invoke-virtual {v1, p6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lo/aif;->statusBarColor:I

    .line 42
    iput p8, p0, Lo/aif;->bGf:I

    .line 43
    iput p9, p0, Lo/aif;->bGg:I

    .line 44
    iput p10, p0, Lo/aif;->bGh:I

    .line 45
    iput p7, p0, Lo/aif;->bGi:I

    .line 46
    return-void
.end method


# virtual methods
.method public abstract zG()Landroid/support/v7/widget/RecyclerView$if;
.end method

.method public abstract zH()Lo/aif$if;
.end method

.method public abstract zI()Landroid/support/v7/widget/RecyclerView$aux;
.end method
