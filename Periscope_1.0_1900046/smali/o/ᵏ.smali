.class public abstract Lo/ᵏ;
.super Lo/د;
.source ""


# instance fields
.field private 〵:I

.field private ノ:I

.field private 亅:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V
    .locals 1

    .line 76
    invoke-direct {p0, p1, p3, p4}, Lo/د;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 77
    iput p2, p0, Lo/ᵏ;->ノ:I

    iput p2, p0, Lo/ᵏ;->〵:I

    .line 78
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lo/ᵏ;->亅:Landroid/view/LayoutInflater;

    .line 79
    return-void
.end method


# virtual methods
.method public newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 111
    iget-object v0, p0, Lo/ᵏ;->亅:Landroid/view/LayoutInflater;

    iget v1, p0, Lo/ᵏ;->ノ:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 106
    iget-object v0, p0, Lo/ᵏ;->亅:Landroid/view/LayoutInflater;

    iget v1, p0, Lo/ᵏ;->〵:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
