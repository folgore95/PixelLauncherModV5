.class public Landroid/support/v4/c/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static ji:[Ljava/lang/Object;

.field static jj:I

.field static jk:[Ljava/lang/Object;

.field static jl:I


# instance fields
.field public iI:[I

.field public iJ:[Ljava/lang/Object;

.field public mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    sget-object v0, Landroid/support/v4/c/e;->iL:[I

    iput-object v0, p0, Landroid/support/v4/c/u;->iI:[I

    .line 237
    sget-object v0, Landroid/support/v4/c/e;->iN:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    .line 238
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/c/u;->mSize:I

    .line 239
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    if-nez p1, :cond_0

    .line 246
    sget-object p1, Landroid/support/v4/c/e;->iL:[I

    iput-object p1, p0, Landroid/support/v4/c/u;->iI:[I

    .line 247
    sget-object p1, Landroid/support/v4/c/e;->iN:[Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    goto :goto_0

    .line 249
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v4/c/u;->s(I)V

    .line 251
    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v4/c/u;->mSize:I

    .line 252
    return-void
.end method

.method private static a([I[Ljava/lang/Object;I)V
    .locals 7

    .line 200
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x1

    const/16 v6, 0x8

    if-ne v0, v6, :cond_2

    .line 201
    const-class v0, Landroid/support/v4/c/a;

    monitor-enter v0

    .line 202
    :try_start_0
    sget v6, Landroid/support/v4/c/u;->jl:I

    if-ge v6, v4, :cond_1

    .line 203
    sget-object v4, Landroid/support/v4/c/u;->jk:[Ljava/lang/Object;

    aput-object v4, p1, v3

    .line 204
    aput-object p0, p1, v5

    .line 205
    shl-int/lit8 p0, p2, 0x1

    sub-int/2addr p0, v5

    :goto_0
    if-lt p0, v2, :cond_0

    .line 206
    aput-object v1, p1, p0

    .line 205
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 208
    :cond_0
    sput-object p1, Landroid/support/v4/c/u;->jk:[Ljava/lang/Object;

    .line 209
    sget p0, Landroid/support/v4/c/u;->jl:I

    add-int/2addr p0, v5

    sput p0, Landroid/support/v4/c/u;->jl:I

    .line 213
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 214
    :cond_2
    array-length v0, p0

    const/4 v6, 0x4

    if-ne v0, v6, :cond_5

    .line 215
    const-class v0, Landroid/support/v4/c/a;

    monitor-enter v0

    .line 216
    :try_start_1
    sget v6, Landroid/support/v4/c/u;->jj:I

    if-ge v6, v4, :cond_4

    .line 217
    sget-object v4, Landroid/support/v4/c/u;->ji:[Ljava/lang/Object;

    aput-object v4, p1, v3

    .line 218
    aput-object p0, p1, v5

    .line 219
    shl-int/lit8 p0, p2, 0x1

    sub-int/2addr p0, v5

    :goto_1
    if-lt p0, v2, :cond_3

    .line 220
    aput-object v1, p1, p0

    .line 219
    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    .line 222
    :cond_3
    sput-object p1, Landroid/support/v4/c/u;->ji:[Ljava/lang/Object;

    .line 223
    sget p0, Landroid/support/v4/c/u;->jj:I

    add-int/2addr p0, v5

    sput p0, Landroid/support/v4/c/u;->jj:I

    .line 227
    :cond_4
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 229
    :cond_5
    return-void
.end method

.method private static b([III)I
    .locals 0

    .line 76
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/support/v4/c/e;->a([III)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 77
    :catch_0
    move-exception p0

    .line 79
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method private s(I)V
    .locals 5

    .line 164
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne p1, v3, :cond_1

    .line 165
    const-class v3, Landroid/support/v4/c/a;

    monitor-enter v3

    .line 166
    :try_start_0
    sget-object v4, Landroid/support/v4/c/u;->jk:[Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 167
    sget-object p1, Landroid/support/v4/c/u;->jk:[Ljava/lang/Object;

    .line 168
    iput-object p1, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    .line 169
    aget-object v4, p1, v1

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, Landroid/support/v4/c/u;->jk:[Ljava/lang/Object;

    .line 170
    aget-object v4, p1, v2

    check-cast v4, [I

    check-cast v4, [I

    iput-object v4, p0, Landroid/support/v4/c/u;->iI:[I

    .line 171
    aput-object v0, p1, v2

    aput-object v0, p1, v1

    .line 172
    sget p1, Landroid/support/v4/c/u;->jl:I

    sub-int/2addr p1, v2

    sput p1, Landroid/support/v4/c/u;->jl:I

    .line 175
    monitor-exit v3

    return-void

    .line 177
    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 178
    :cond_1
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    .line 179
    const-class v3, Landroid/support/v4/c/a;

    monitor-enter v3

    .line 180
    :try_start_1
    sget-object v4, Landroid/support/v4/c/u;->ji:[Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 181
    sget-object p1, Landroid/support/v4/c/u;->ji:[Ljava/lang/Object;

    .line 182
    iput-object p1, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    .line 183
    aget-object v4, p1, v1

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, Landroid/support/v4/c/u;->ji:[Ljava/lang/Object;

    .line 184
    aget-object v4, p1, v2

    check-cast v4, [I

    check-cast v4, [I

    iput-object v4, p0, Landroid/support/v4/c/u;->iI:[I

    .line 185
    aput-object v0, p1, v2

    aput-object v0, p1, v1

    .line 186
    sget p1, Landroid/support/v4/c/u;->jj:I

    sub-int/2addr p1, v2

    sput p1, Landroid/support/v4/c/u;->jj:I

    .line 189
    monitor-exit v3

    return-void

    .line 191
    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 194
    :cond_3
    :goto_0
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/support/v4/c/u;->iI:[I

    .line 195
    shl-int/2addr p1, v2

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    .line 196
    return-void
.end method


# virtual methods
.method final aD()I
    .locals 5

    .line 125
    iget v0, p0, Landroid/support/v4/c/u;->mSize:I

    .line 128
    if-nez v0, :cond_0

    .line 129
    const/4 v0, -0x1

    return v0

    .line 132
    :cond_0
    iget-object v1, p0, Landroid/support/v4/c/u;->iI:[I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/support/v4/c/u;->b([III)I

    move-result v1

    .line 135
    if-gez v1, :cond_1

    .line 136
    return v1

    .line 140
    :cond_1
    iget-object v2, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    if-nez v2, :cond_2

    .line 141
    return v1

    .line 146
    :cond_2
    add-int/lit8 v2, v1, 0x1

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Landroid/support/v4/c/u;->iI:[I

    aget v3, v3, v2

    if-nez v3, :cond_4

    .line 147
    iget-object v3, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_3

    return v2

    .line 146
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    :cond_4
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_6

    iget-object v0, p0, Landroid/support/v4/c/u;->iI:[I

    aget v0, v0, v1

    if-nez v0, :cond_6

    .line 152
    iget-object v0, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v0, v0, v3

    if-nez v0, :cond_5

    return v1

    .line 151
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 159
    :cond_6
    not-int v0, v2

    return v0
.end method

.method public clear()V
    .locals 4

    .line 268
    iget v0, p0, Landroid/support/v4/c/u;->mSize:I

    if-lez v0, :cond_0

    .line 269
    iget-object v0, p0, Landroid/support/v4/c/u;->iI:[I

    .line 270
    iget-object v1, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    .line 271
    iget v2, p0, Landroid/support/v4/c/u;->mSize:I

    .line 272
    sget-object v3, Landroid/support/v4/c/e;->iL:[I

    iput-object v3, p0, Landroid/support/v4/c/u;->iI:[I

    .line 273
    sget-object v3, Landroid/support/v4/c/e;->iN:[Ljava/lang/Object;

    iput-object v3, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    .line 274
    const/4 v3, 0x0

    iput v3, p0, Landroid/support/v4/c/u;->mSize:I

    .line 275
    invoke-static {v0, v1, v2}, Landroid/support/v4/c/u;->a([I[Ljava/lang/Object;I)V

    .line 277
    :cond_0
    iget v0, p0, Landroid/support/v4/c/u;->mSize:I

    if-lez v0, :cond_1

    .line 278
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 280
    :cond_1
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 310
    invoke-virtual {p0, p1}, Landroid/support/v4/c/u;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0

    .line 350
    invoke-virtual {p0, p1}, Landroid/support/v4/c/u;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ensureCapacity(I)V
    .locals 5

    .line 287
    iget v0, p0, Landroid/support/v4/c/u;->mSize:I

    .line 288
    iget-object v1, p0, Landroid/support/v4/c/u;->iI:[I

    array-length v1, v1

    if-ge v1, p1, :cond_1

    .line 289
    iget-object v1, p0, Landroid/support/v4/c/u;->iI:[I

    .line 290
    iget-object v2, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    .line 291
    invoke-direct {p0, p1}, Landroid/support/v4/c/u;->s(I)V

    .line 292
    iget p1, p0, Landroid/support/v4/c/u;->mSize:I

    if-lez p1, :cond_0

    .line 293
    iget-object p1, p0, Landroid/support/v4/c/u;->iI:[I

    const/4 v3, 0x0

    invoke-static {v1, v3, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    iget-object p1, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    shl-int/lit8 v4, v0, 0x1

    invoke-static {v2, v3, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    :cond_0
    invoke-static {v1, v2, v0}, Landroid/support/v4/c/u;->a([I[Ljava/lang/Object;I)V

    .line 298
    :cond_1
    iget p1, p0, Landroid/support/v4/c/u;->mSize:I

    if-eq p1, v0, :cond_2

    .line 299
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    .line 301
    :cond_2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 589
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 590
    return v0

    .line 592
    :cond_0
    instance-of v1, p1, Landroid/support/v4/c/u;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 593
    check-cast p1, Landroid/support/v4/c/u;

    .line 594
    invoke-virtual {p0}, Landroid/support/v4/c/u;->size()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/v4/c/u;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 595
    return v2

    .line 599
    :cond_1
    move v1, v2

    :goto_0
    :try_start_0
    iget v3, p0, Landroid/support/v4/c/u;->mSize:I

    if-ge v1, v3, :cond_5

    .line 600
    invoke-virtual {p0, v1}, Landroid/support/v4/c/u;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 601
    invoke-virtual {p0, v1}, Landroid/support/v4/c/u;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 602
    invoke-virtual {p1, v3}, Landroid/support/v4/c/u;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 603
    if-nez v4, :cond_3

    .line 604
    if-nez v5, :cond_2

    invoke-virtual {p1, v3}, Landroid/support/v4/c/u;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 605
    :cond_2
    return v2

    .line 607
    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_4

    .line 608
    return v2

    .line 599
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 615
    :cond_5
    nop

    .line 616
    return v0

    .line 613
    :catch_0
    move-exception p1

    .line 614
    return v2

    .line 611
    :catch_1
    move-exception p1

    .line 612
    return v2

    .line 617
    :cond_6
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_c

    .line 618
    check-cast p1, Ljava/util/Map;

    .line 619
    invoke-virtual {p0}, Landroid/support/v4/c/u;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v1, v3, :cond_7

    .line 620
    return v2

    .line 624
    :cond_7
    move v1, v2

    :goto_1
    :try_start_1
    iget v3, p0, Landroid/support/v4/c/u;->mSize:I

    if-ge v1, v3, :cond_b

    .line 625
    invoke-virtual {p0, v1}, Landroid/support/v4/c/u;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 626
    invoke-virtual {p0, v1}, Landroid/support/v4/c/u;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 627
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 628
    if-nez v4, :cond_9

    .line 629
    if-nez v5, :cond_8

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 630
    :cond_8
    return v2

    .line 632
    :cond_9
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v3, :cond_a

    .line 633
    return v2

    .line 624
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 640
    :cond_b
    nop

    .line 641
    return v0

    .line 638
    :catch_2
    move-exception p1

    .line 639
    return v2

    .line 636
    :catch_3
    move-exception p1

    .line 637
    return v2

    .line 643
    :cond_c
    return v2
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 360
    invoke-virtual {p0, p1}, Landroid/support/v4/c/u;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    .line 361
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hashCode()I
    .locals 9

    .line 651
    iget-object v0, p0, Landroid/support/v4/c/u;->iI:[I

    .line 652
    iget-object v1, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    .line 653
    nop

    .line 654
    iget v2, p0, Landroid/support/v4/c/u;->mSize:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v5, v3

    move v3, v4

    move v6, v3

    :goto_0
    if-ge v3, v2, :cond_1

    .line 655
    aget-object v7, v1, v5

    .line 656
    aget v8, v0, v3

    if-nez v7, :cond_0

    move v7, v4

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :goto_1
    xor-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 654
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 658
    :cond_1
    return v6
.end method

.method final indexOf(Ljava/lang/Object;I)I
    .locals 5

    .line 87
    iget v0, p0, Landroid/support/v4/c/u;->mSize:I

    .line 90
    if-nez v0, :cond_0

    .line 91
    const/4 p1, -0x1

    return p1

    .line 94
    :cond_0
    iget-object v1, p0, Landroid/support/v4/c/u;->iI:[I

    invoke-static {v1, v0, p2}, Landroid/support/v4/c/u;->b([III)I

    move-result v1

    .line 97
    if-gez v1, :cond_1

    .line 98
    return v1

    .line 102
    :cond_1
    iget-object v2, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    return v1

    .line 108
    :cond_2
    add-int/lit8 v2, v1, 0x1

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Landroid/support/v4/c/u;->iI:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_4

    .line 109
    iget-object v3, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    .line 108
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :cond_4
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_6

    iget-object v0, p0, Landroid/support/v4/c/u;->iI:[I

    aget v0, v0, v1

    if-ne v0, p2, :cond_6

    .line 114
    iget-object v0, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 113
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 121
    :cond_6
    not-int p1, v2

    return p1
.end method

.method public final indexOfKey(Ljava/lang/Object;)I
    .locals 1

    .line 320
    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/c/u;->aD()I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/c/u;->indexOf(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method final indexOfValue(Ljava/lang/Object;)I
    .locals 5

    .line 324
    iget v0, p0, Landroid/support/v4/c/u;->mSize:I

    mul-int/lit8 v0, v0, 0x2

    .line 325
    iget-object v1, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    .line 326
    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 327
    move p1, v2

    :goto_0
    if-ge p1, v0, :cond_3

    .line 328
    aget-object v3, v1, p1

    if-nez v3, :cond_0

    .line 329
    shr-int/2addr p1, v2

    return p1

    .line 327
    :cond_0
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 333
    :cond_1
    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_3

    .line 334
    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 335
    shr-int/lit8 p1, v3, 0x1

    return p1

    .line 333
    :cond_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 339
    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 399
    iget v0, p0, Landroid/support/v4/c/u;->mSize:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final keyAt(I)Ljava/lang/Object;
    .locals 1

    .line 370
    iget-object v0, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 411
    iget v0, p0, Landroid/support/v4/c/u;->mSize:I

    .line 414
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 415
    nop

    .line 416
    invoke-virtual {p0}, Landroid/support/v4/c/u;->aD()I

    move-result v2

    .line 421
    move v3, v1

    goto :goto_0

    .line 418
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 419
    invoke-virtual {p0, p1, v2}, Landroid/support/v4/c/u;->indexOf(Ljava/lang/Object;I)I

    move-result v3

    .line 421
    move v8, v3

    move v3, v2

    move v2, v8

    :goto_0
    if-ltz v2, :cond_1

    .line 422
    shl-int/lit8 p1, v2, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 423
    iget-object v0, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 424
    iget-object v1, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 425
    return-object v0

    .line 428
    :cond_1
    not-int v2, v2

    .line 429
    iget-object v4, p0, Landroid/support/v4/c/u;->iI:[I

    array-length v4, v4

    if-lt v0, v4, :cond_6

    .line 430
    const/4 v4, 0x4

    const/16 v5, 0x8

    if-lt v0, v5, :cond_2

    shr-int/lit8 v4, v0, 0x1

    add-int/2addr v4, v0

    goto :goto_1

    :cond_2
    if-lt v0, v4, :cond_3

    .line 435
    move v4, v5

    goto :goto_1

    .line 430
    :cond_3
    nop

    .line 435
    :goto_1
    iget-object v5, p0, Landroid/support/v4/c/u;->iI:[I

    .line 436
    iget-object v6, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    .line 437
    invoke-direct {p0, v4}, Landroid/support/v4/c/u;->s(I)V

    .line 439
    iget v4, p0, Landroid/support/v4/c/u;->mSize:I

    if-eq v0, v4, :cond_4

    .line 440
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    .line 443
    :cond_4
    iget-object v4, p0, Landroid/support/v4/c/u;->iI:[I

    array-length v4, v4

    if-lez v4, :cond_5

    .line 445
    iget-object v4, p0, Landroid/support/v4/c/u;->iI:[I

    array-length v7, v5

    invoke-static {v5, v1, v4, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 446
    iget-object v4, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    array-length v7, v6

    invoke-static {v6, v1, v4, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    :cond_5
    invoke-static {v5, v6, v0}, Landroid/support/v4/c/u;->a([I[Ljava/lang/Object;I)V

    .line 452
    :cond_6
    if-ge v2, v0, :cond_7

    .line 455
    iget-object v1, p0, Landroid/support/v4/c/u;->iI:[I

    iget-object v4, p0, Landroid/support/v4/c/u;->iI:[I

    add-int/lit8 v5, v2, 0x1

    sub-int v6, v0, v2

    invoke-static {v1, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 456
    iget-object v1, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    iget-object v6, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    shl-int/lit8 v5, v5, 0x1

    iget v7, p0, Landroid/support/v4/c/u;->mSize:I

    sub-int/2addr v7, v2

    shl-int/lit8 v7, v7, 0x1

    invoke-static {v1, v4, v6, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    :cond_7
    iget v1, p0, Landroid/support/v4/c/u;->mSize:I

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Landroid/support/v4/c/u;->iI:[I

    array-length v0, v0

    if-lt v2, v0, :cond_8

    goto :goto_2

    .line 465
    :cond_8
    iget-object v0, p0, Landroid/support/v4/c/u;->iI:[I

    aput v3, v0, v2

    .line 466
    iget-object v0, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    shl-int/lit8 v1, v2, 0x1

    aput-object p1, v0, v1

    .line 467
    iget-object p1, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    aput-object p2, p1, v1

    .line 468
    iget p1, p0, Landroid/support/v4/c/u;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/v4/c/u;->mSize:I

    .line 469
    const/4 p1, 0x0

    return-object p1

    .line 461
    :cond_9
    :goto_2
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 499
    invoke-virtual {p0, p1}, Landroid/support/v4/c/u;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    .line 500
    if-ltz p1, :cond_0

    .line 501
    invoke-virtual {p0, p1}, Landroid/support/v4/c/u;->removeAt(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 504
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final removeAt(I)Ljava/lang/Object;
    .locals 10

    .line 513
    iget-object v0, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, v1, 0x1

    aget-object v0, v0, v2

    .line 514
    iget v2, p0, Landroid/support/v4/c/u;->mSize:I

    .line 516
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v2, v4, :cond_0

    .line 519
    iget-object p1, p0, Landroid/support/v4/c/u;->iI:[I

    iget-object v1, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Landroid/support/v4/c/u;->a([I[Ljava/lang/Object;I)V

    .line 520
    sget-object p1, Landroid/support/v4/c/e;->iL:[I

    iput-object p1, p0, Landroid/support/v4/c/u;->iI:[I

    .line 521
    sget-object p1, Landroid/support/v4/c/e;->iN:[Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    .line 522
    goto/16 :goto_1

    .line 524
    :cond_0
    add-int/lit8 v5, v2, -0x1

    .line 525
    iget-object v6, p0, Landroid/support/v4/c/u;->iI:[I

    array-length v6, v6

    const/16 v7, 0x8

    if-le v6, v7, :cond_5

    iget v6, p0, Landroid/support/v4/c/u;->mSize:I

    iget-object v8, p0, Landroid/support/v4/c/u;->iI:[I

    array-length v8, v8

    div-int/lit8 v8, v8, 0x3

    if-ge v6, v8, :cond_5

    .line 529
    if-le v2, v7, :cond_1

    shr-int/lit8 v6, v2, 0x1

    add-int v7, v2, v6

    nop

    .line 533
    :cond_1
    iget-object v6, p0, Landroid/support/v4/c/u;->iI:[I

    .line 534
    iget-object v8, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    .line 535
    invoke-direct {p0, v7}, Landroid/support/v4/c/u;->s(I)V

    .line 537
    iget v7, p0, Landroid/support/v4/c/u;->mSize:I

    if-eq v2, v7, :cond_2

    .line 538
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    .line 541
    :cond_2
    if-lez p1, :cond_3

    .line 543
    iget-object v7, p0, Landroid/support/v4/c/u;->iI:[I

    invoke-static {v6, v3, v7, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 544
    iget-object v7, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    invoke-static {v8, v3, v7, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 546
    :cond_3
    if-ge p1, v5, :cond_4

    .line 549
    add-int/lit8 v3, p1, 0x1

    iget-object v7, p0, Landroid/support/v4/c/u;->iI:[I

    sub-int v9, v5, p1

    invoke-static {v6, v3, v7, p1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 550
    shl-int/lit8 p1, v3, 0x1

    iget-object v3, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    shl-int/lit8 v4, v9, 0x1

    invoke-static {v8, p1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 553
    :cond_4
    goto :goto_0

    .line 554
    :cond_5
    if-ge p1, v5, :cond_6

    .line 557
    iget-object v3, p0, Landroid/support/v4/c/u;->iI:[I

    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Landroid/support/v4/c/u;->iI:[I

    sub-int v8, v5, p1

    invoke-static {v3, v6, v7, p1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 558
    iget-object p1, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    shl-int/lit8 v3, v6, 0x1

    iget-object v6, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    shl-int/lit8 v7, v8, 0x1

    invoke-static {p1, v3, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 561
    :cond_6
    iget-object p1, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    shl-int/lit8 v1, v5, 0x1

    const/4 v3, 0x0

    aput-object v3, p1, v1

    .line 562
    iget-object p1, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    add-int/2addr v1, v4

    aput-object v3, p1, v1

    .line 565
    :goto_0
    move v3, v5

    :goto_1
    iget p1, p0, Landroid/support/v4/c/u;->mSize:I

    if-eq v2, p1, :cond_7

    .line 566
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    .line 568
    :cond_7
    iput v3, p0, Landroid/support/v4/c/u;->mSize:I

    .line 569
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 576
    iget v0, p0, Landroid/support/v4/c/u;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 670
    invoke-virtual {p0}, Landroid/support/v4/c/u;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    const-string v0, "{}"

    return-object v0

    .line 674
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/c/u;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 675
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 676
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroid/support/v4/c/u;->mSize:I

    if-ge v1, v2, :cond_4

    .line 677
    if-lez v1, :cond_1

    .line 678
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    :cond_1
    invoke-virtual {p0, v1}, Landroid/support/v4/c/u;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 681
    if-eq v2, p0, :cond_2

    .line 682
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 684
    :cond_2
    const-string v2, "(this Map)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    :goto_1
    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 687
    invoke-virtual {p0, v1}, Landroid/support/v4/c/u;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 688
    if-eq v2, p0, :cond_3

    .line 689
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 691
    :cond_3
    const-string v2, "(this Map)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 694
    :cond_4
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 695
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final valueAt(I)Ljava/lang/Object;
    .locals 1

    .line 379
    iget-object v0, p0, Landroid/support/v4/c/u;->iJ:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method