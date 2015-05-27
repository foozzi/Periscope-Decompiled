.class Lo/ฯ$if;
.super Lo/ᵛ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ฯ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/\u1d5b<Ljava/lang/Integer;Landroid/graphics/PorterDuffColorFilter;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 503
    invoke-direct {p0, p1}, Lo/ᵛ;-><init>(I)V

    .line 504
    return-void
.end method

.method private static ˋ(ILandroid/graphics/PorterDuff$Mode;)I
    .locals 3

    .line 515
    const/4 v2, 0x1

    .line 516
    add-int/lit8 v2, p0, 0x1f

    .line 517
    mul-int/lit8 v0, v2, 0x1f

    invoke-virtual {p1}, Landroid/graphics/PorterDuff$Mode;->hashCode()I

    move-result v1

    add-int v2, v0, v1

    .line 518
    return v2
.end method


# virtual methods
.method ˊ(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    .line 507
    invoke-static {p1, p2}, Lo/ฯ$if;->ˋ(ILandroid/graphics/PorterDuff$Mode;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/ฯ$if;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PorterDuffColorFilter;

    return-object v0
.end method

.method ˊ(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    .line 511
    invoke-static {p1, p2}, Lo/ฯ$if;->ˋ(ILandroid/graphics/PorterDuff$Mode;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lo/ฯ$if;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PorterDuffColorFilter;

    return-object v0
.end method
