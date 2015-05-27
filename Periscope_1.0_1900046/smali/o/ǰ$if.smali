.class Lo/ǰ$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ǰ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˋ(Ljava/io/InputStream;[B)Ljava/io/InputStream;
    .locals 1

    .line 140
    new-instance v0, Lo/〳;

    invoke-direct {v0, p1, p2}, Lo/〳;-><init>(Ljava/io/InputStream;[B)V

    return-object v0
.end method
