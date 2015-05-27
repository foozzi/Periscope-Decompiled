.class Lo/⁔;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic j:Lo/ῑ;


# direct methods
.method constructor <init>(Lo/ῑ;)V
    .locals 0

    .line 1078
    iput-object p1, p0, Lo/⁔;->j:Lo/ῑ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
        }
    .end annotation

    .line 1082
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 1083
    iget-object v0, p0, Lo/⁔;->j:Lo/ῑ;

    invoke-static {v0}, Lo/ῑ;->ˊ(Lo/ῑ;)Lo/ῑ$if;

    move-result-object v1

    .line 1085
    if-eqz v1, :cond_0

    .line 1086
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lo/ῑ$if;->ˊ(Lo/ῑ$if;Z)Z

    .line 1089
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/widget/AdapterView<*>;)V"
        }
    .end annotation

    .line 1092
    return-void
.end method
