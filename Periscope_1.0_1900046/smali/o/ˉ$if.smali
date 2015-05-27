.class Lo/ˉ$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ˉ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# static fields
.field public static final ﹾ:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2217
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lo/ˉ$if;->ﹾ:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010003
        0x10100d0
        0x10100d1
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 2216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
