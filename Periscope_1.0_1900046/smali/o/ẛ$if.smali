.class Lo/ẛ$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ẛ$ˊ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ẛ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field private final jg:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Landroid/util/DisplayMetrics;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lo/ẛ$if;->jg:Landroid/util/DisplayMetrics;

    .line 105
    return-void
.end method


# virtual methods
.method public 〳()I
    .locals 1

    .line 109
    iget-object v0, p0, Lo/ẛ$if;->jg:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public 〵()I
    .locals 1

    .line 114
    iget-object v0, p0, Lo/ẛ$if;->jg:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method
